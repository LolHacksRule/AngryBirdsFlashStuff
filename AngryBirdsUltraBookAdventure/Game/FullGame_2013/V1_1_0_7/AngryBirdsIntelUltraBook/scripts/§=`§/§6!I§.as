package §=`§
{
   import §2m§.§<!?§;
   import §<8§.§!3§;
   import §<8§.§,j§;
   import §?]§.§1P§;
   import §?]§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §6!I§ extends EventDispatcher
   {
      
      private static const §'x§:int = 2;
      
      private static const §3M§:int = 2048;
      
      private static var §]!#§:§6!I§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'x§ = 2;
            do
            {
               §3M§ = 2048;
            }
            while(_loc2_);
            
         }
      }
      
      private var §3"#§:Dictionary;
      
      private var §6w§:Vector.<§,j§>;
      
      private var §]e§:Dictionary;
      
      private var §@0§:Boolean;
      
      private var §9!^§:String;
      
      private var §<R§:Texture;
      
      private var §@^§:int;
      
      private var §#!2§:int;
      
      public function §6!I§(param1:String = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§6w§ = new Vector.<§,j§>();
               while(!(_loc3_ && _loc3_))
               {
                  this.§3"#§ = new Dictionary();
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        this.§]e§ = new Dictionary();
                        do
                        {
                           this.§9!^§ = param1;
                        }
                        while(_loc3_ && _loc2_);
                        
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public static function get §[U§() : §6!I§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §6!I§)
         {
            §§push(§]!#§);
            if(_loc1_ || §6!I§)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr49:
                     §]!#§ = new §6!I§();
                  }
               }
               return §]!#§;
            }
         }
         §§goto(addr49);
      }
      
      public function get §3&§() : int
      {
         return this.§@^§;
      }
      
      public function get §5j§() : int
      {
         return this.§#!2§;
      }
      
      public function get id() : String
      {
         return this.§9!^§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§#`§ = null;
         var _loc2_:§,j§ = null;
         if(_loc6_ || _loc2_)
         {
            if(this.§3"#§)
            {
               addr33:
               var _loc3_:int = 0;
               var _loc4_:* = this.§3"#§;
               loop13:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_)
                        {
                           this.unregisterBitmapDataTexture(_loc1_.texture.parent);
                           if(_loc6_)
                           {
                              _loc1_.dispose();
                           }
                        }
                        continue;
                     }
                     if(!(_loc5_ && _loc1_))
                     {
                        if(!_loc5_)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              this.§3"#§ = null;
                              if(!_loc5_)
                              {
                                 addr84:
                                 if(this.§6w§)
                                 {
                                    if(_loc6_)
                                    {
                                       addr89:
                                       _loc3_ = 0;
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          _loc4_ = this.§6w§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop13;
                                          }
                                          addr131:
                                          if(!_loc5_)
                                          {
                                             this.§6w§ = null;
                                             loop1:
                                             while(true)
                                             {
                                                addr216:
                                                while(true)
                                                {
                                                   if(this.§]e§)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§]e§ = null;
                                                         addr222:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr219:
                                                   }
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(this.§<R§);
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§<R§);
                                                               addr213:
                                                               while(true)
                                                               {
                                                                  §§pop().dispose();
                                                                  addr214:
                                                                  while(true)
                                                                  {
                                                                     this.§<R§ = null;
                                                                     addr197:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc6_ || _loc1_))
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr148:
                                                               if(!(_loc5_ && _loc1_))
                                                               {
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.§6w§ = new Vector.<§,j§>();
                                                            loop8:
                                                            while(!_loc5_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  this.§3"#§ = new Dictionary();
                                                                  while(!_loc5_)
                                                                  {
                                                                     this.§]e§ = new Dictionary();
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§goto(addr148);
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr219);
                                                               }
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                }
                                             }
                                          }
                                          addr130:
                                          addr128:
                                       }
                                       §§goto(addr131);
                                    }
                                    return;
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr130);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc6_ || _loc3_)
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr131);
               }
            }
            §§goto(addr84);
         }
         §§goto(addr33);
      }
      
      public function §@!V§(param1:§,j§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!this.§@0§)
            {
               loop0:
               while(this.§6w§.indexOf(param1) >= 0)
               {
                  if(_loc2_)
                  {
                     while(true)
                     {
                        break loop0;
                     }
                     return;
                  }
                  addr51:
                  addr86:
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!(_loc2_ && this))
                     {
                        return;
                     }
                     addr90:
                     return;
                  }
               }
               while(true)
               {
                  this.§6w§.push(param1);
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  §§goto(addr51);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr51);
      }
      
      private function §,0§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:§,j§ = null;
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
            if(!(_loc11_ && this))
            {
               if(_loc8_ == 0)
               {
                  if(!_loc11_)
                  {
                     §§push(_loc9_.scale);
                     if(_loc12_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc11_)
                        {
                           _loc7_ = §§pop();
                           if(_loc11_)
                           {
                              addr77:
                              break;
                           }
                           addr72:
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
                        if(!_loc11_)
                        {
                           §§push(_loc2_);
                           loop1:
                           while(true)
                           {
                              if(§§pop() + _loc10_.width + §'x§ >= §3M§)
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
                                                   while(_loc12_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      while(!_loc11_)
                                                      {
                                                         §§push(0);
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr288:
                                                            while(_loc12_)
                                                            {
                                                            }
                                                            continue loop4;
                                                         }
                                                         loop22:
                                                         for(; !(_loc11_ && _loc2_); if(!(_loc12_ || param1))
                                                         {
                                                            continue;
                                                         },if(true)
                                                         {
                                                            continue loop0;
                                                         },§§goto(addr107))
                                                         {
                                                            loop23:
                                                            while(true)
                                                            {
                                                               if(_loc10_.height + §'x§ <= _loc6_)
                                                               {
                                                                  loop29:
                                                                  while(true)
                                                                  {
                                                                     _loc8_++;
                                                                     if(!(_loc11_ && param1))
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           if(_loc12_)
                                                                           {
                                                                              continue loop22;
                                                                           }
                                                                           addr194:
                                                                           while(true)
                                                                           {
                                                                              §§push(int(_loc10_.height + §'x§));
                                                                              addr199:
                                                                              addr245:
                                                                              loop25:
                                                                              while(!(_loc11_ && this))
                                                                              {
                                                                                 addr206:
                                                                                 if(_loc12_ || _loc3_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       while(!_loc11_)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          while(_loc12_ || this)
                                                                                          {
                                                                                             if(§§pop() <= §§pop())
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                break loop25;
                                                                                             }
                                                                                             §§push(_loc6_);
                                                                                             if(_loc11_ && param1)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc12_ || _loc3_))
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             addr147:
                                                                                             §§push(int(§§pop()));
                                                                                             if(!(_loc12_ || _loc3_))
                                                                                             {
                                                                                                while(_loc12_)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   continue loop22;
                                                                                                   §§goto(addr147);
                                                                                                }
                                                                                                continue loop3;
                                                                                                addr253:
                                                                                             }
                                                                                             addr164:
                                                                                             if(_loc12_ || this)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                while(_loc12_ || this)
                                                                                                {
                                                                                                   if(!(_loc11_ && this))
                                                                                                   {
                                                                                                      continue loop29;
                                                                                                   }
                                                                                                   §§goto(addr288);
                                                                                                   continue loop29;
                                                                                                }
                                                                                                continue loop16;
                                                                                                addr172:
                                                                                             }
                                                                                             while(_loc12_)
                                                                                             {
                                                                                                §§push(int(§§pop() + (_loc10_.width + §'x§)));
                                                                                                continue loop15;
                                                                                                §§goto(addr164);
                                                                                             }
                                                                                             §§goto(addr287);
                                                                                          }
                                                                                          continue loop6;
                                                                                          if(_loc11_ && _loc2_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr130);
                                                                                       }
                                                                                       addr266:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() + _loc10_.height + §'x§ >= §3M§)
                                                                                          {
                                                                                             addr273:
                                                                                             break loop0;
                                                                                          }
                                                                                          §§goto(addr275);
                                                                                          §§push(_loc2_);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(_loc12_ || _loc2_)
                                                                              {
                                                                                 §§goto(addr253);
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 if(_loc11_ && _loc2_)
                                                                                 {
                                                                                    break;
                                                                                    addr107:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(_loc12_ || _loc3_)
                                                                                    {
                                                                                       if(_loc12_ || param1)
                                                                                       {
                                                                                          §§goto(addr123);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr199);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr147);
                                                                                    continue loop22;
                                                                                 }
                                                                                 continue loop22;
                                                                              }
                                                                           }
                                                                           §§goto(addr273);
                                                                           addr221:
                                                                        }
                                                                        §§goto(addr244);
                                                                     }
                                                                     §§goto(addr172);
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr194);
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr266);
                              }
                           }
                        }
                        §§goto(addr273);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr72);
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
      
      private function §4!'§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:§,j§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§ -§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§!3§ = null;
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
                        if(_loc14_)
                        {
                           §§pop();
                           if(_loc14_ || this)
                           {
                              addr73:
                              §§push(_loc7_);
                              if(_loc14_)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(_loc14_ || this)
                                 {
                                    addr87:
                                    if(!§§pop())
                                    {
                                       if(!_loc15_)
                                       {
                                          addr90:
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(!_loc15_)
                                       {
                                          addr95:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc7_ = §§pop();
                                    }
                                    _loc9_ = _loc8_.bitmapData;
                                    if(_loc14_)
                                    {
                                       §§push(_loc3_);
                                       loop2:
                                       while(true)
                                       {
                                          if(§§pop() + _loc9_.width + §'x§ > param2.width)
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                §§push(0);
                                                loop4:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop() + _loc5_));
                                                         addr196:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            addr197:
                                                            while(_loc14_ || param2)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr187:
                                                                  while(true)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     addr188:
                                                                     while(!_loc15_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  addr173:
                                                                  if(false)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  (_loc10_ = new § -§()).offset = new Point(_loc3_,_loc4_);
                                                                  if(!(_loc15_ && _loc3_))
                                                                  {
                                                                     _loc10_.native = _loc8_;
                                                                     if(_loc14_ || param1)
                                                                     {
                                                                        _loc6_.push(_loc10_);
                                                                        addr251:
                                                                        addr272:
                                                                        §§push(_loc8_.§'M§);
                                                                        if(_loc14_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           if(!(_loc15_ && this))
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              addr265:
                                                                              if(!_loc15_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    _loc12_ = §§pop();
                                                                                    if(_loc15_ && _loc3_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr251);
                                                                                       }
                                                                                       addr309:
                                                                                       §§push(_loc12_);
                                                                                       if(!(_loc15_ && param2))
                                                                                       {
                                                                                          addr317:
                                                                                          if(§§pop() < _loc11_)
                                                                                          {
                                                                                             (_loc13_ = _loc8_.§-v§(_loc12_)).§"-§ = null;
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                _loc13_.§?!-§.offset(_loc3_,_loc4_);
                                                                                                if(_loc14_ || this)
                                                                                                {
                                                                                                   _loc12_++;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr309);
                                                                                          }
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                addr324:
                                                                                                §§push(int(§§pop() + (_loc9_.width + §'x§)));
                                                                                                if(!(_loc15_ && _loc3_))
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   if(_loc15_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr355:
                                                                                                   if(_loc9_.height + §'x§ > _loc5_)
                                                                                                   {
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr368:
                                                                                                         _loc5_ = int(_loc9_.height + §'x§);
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr368);
                                                                                          }
                                                                                          param1.splice(0,1);
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr324);
                                                                                    }
                                                                                    §§goto(addr265);
                                                                                 }
                                                                                 §§goto(addr368);
                                                                              }
                                                                              §§goto(addr272);
                                                                           }
                                                                           §§goto(addr368);
                                                                        }
                                                                        §§goto(addr317);
                                                                     }
                                                                     §§goto(addr355);
                                                                  }
                                                                  §§goto(addr368);
                                                               }
                                                            }
                                                            continue loop3;
                                                         }
                                                         addr120:
                                                         if(_loc15_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc14_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(_loc15_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(§§pop() + _loc9_.height + §'x§ > param2.height)
                                                         {
                                                            if(!(_loc15_ && param2))
                                                            {
                                                               if(_loc15_ && this)
                                                               {
                                                                  §§goto(addr197);
                                                               }
                                                               break loop1;
                                                            }
                                                            addr166:
                                                            if(_loc14_ || this)
                                                            {
                                                               §§goto(addr173);
                                                            }
                                                            §§goto(addr188);
                                                         }
                                                         param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                         §§goto(addr166);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(_loc14_ || param1)
                                             {
                                                if(!(_loc15_ && _loc3_))
                                                {
                                                   §§goto(addr120);
                                                }
                                                §§goto(addr196);
                                             }
                                             §§goto(addr187);
                                          }
                                       }
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr90);
                        }
                     }
                  }
                  §§goto(addr87);
               }
               §§goto(addr73);
            }
            return _loc6_;
         }
      }
      
      public function §`R§() : Boolean
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc1_:§,j§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§ -§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§!3§ = null;
         if(!(_loc14_ && this))
         {
            §§push(§<!?§.§0,§());
            if(_loc15_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc14_)
                  {
                     §§push(false);
                     if(_loc15_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr88:
                     var _loc2_:Array = [];
                     var _loc12_:int = 0;
                     var _loc13_:* = this.§6w§;
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
                                 if(_loc1_.§'M§ <= 0)
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
                           if(_loc15_)
                           {
                              if(!(_loc14_ && _loc1_))
                              {
                                 if(!_loc14_)
                                 {
                                    while(_loc2_.length > 0)
                                    {
                                       _loc3_ = this.§,0§(_loc2_);
                                       if(!_loc14_)
                                       {
                                          if(_loc3_.width * _loc3_.height == 0)
                                          {
                                             if(!(_loc14_ && _loc2_))
                                             {
                                                throw new Error("Found too large sprite sheet image!");
                                             }
                                          }
                                       }
                                       _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                       if((_loc5_ = this.§4!'§(_loc2_,_loc4_)).length == 0)
                                       {
                                          if(!_loc14_)
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
                                             if(_loc14_)
                                             {
                                                continue;
                                             }
                                             addr213:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                             }
                                             addr282:
                                          }
                                          for(; §§pop() < _loc5_.length; §§goto(addr282))
                                          {
                                             _loc1_ = (_loc8_ = _loc5_[_loc7_]).native;
                                             if(!_loc14_)
                                             {
                                                §§push(_loc1_.§'M§);
                                                if(!(_loc14_ && this))
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc15_ || _loc1_)
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(_loc15_)
                                                      {
                                                         §§push(0);
                                                         if(!_loc14_)
                                                         {
                                                            addr249:
                                                            _loc10_ = §§pop();
                                                            if(!_loc14_)
                                                            {
                                                               addr252:
                                                               while(true)
                                                               {
                                                                  §§push(_loc10_);
                                                               }
                                                               addr271:
                                                            }
                                                            addr281:
                                                            _loc7_++;
                                                            continue;
                                                         }
                                                         while(§§pop() < _loc9_)
                                                         {
                                                            _loc11_ = _loc1_.§-v§(_loc10_);
                                                            if(!_loc14_)
                                                            {
                                                               this.§"!T§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                               if(!_loc14_)
                                                               {
                                                                  _loc10_++;
                                                               }
                                                            }
                                                            §§goto(addr271);
                                                         }
                                                         if(_loc14_ && _loc1_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr281);
                                                      }
                                                      §§goto(addr252);
                                                   }
                                                }
                                             }
                                             §§goto(addr249);
                                          }
                                          continue;
                                       }
                                       §§goto(addr213);
                                    }
                                    if(_loc15_)
                                    {
                                       _loc12_ = 0;
                                       if(_loc15_)
                                       {
                                          _loc13_ = this.§6w§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc13_,_loc12_));
                                             break loop0;
                                          }
                                          addr324:
                                          if(_loc15_ || _loc3_)
                                          {
                                             this.§6w§ = new Vector.<§,j§>();
                                             do
                                             {
                                                this.§@0§ = true;
                                             }
                                             while(_loc14_);
                                             
                                             addr332:
                                          }
                                          addr323:
                                          addr321:
                                       }
                                       §§goto(addr324);
                                    }
                                    return true;
                                 }
                                 §§goto(addr332);
                              }
                              §§goto(addr324);
                           }
                           §§goto(addr323);
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
                        §§goto(addr324);
                     }
                  }
               }
               else
               {
                  addr74:
                  §§push(this.§@0§);
                  if(!_loc14_)
                  {
                     addr78:
                     if(§§pop())
                     {
                        if(_loc15_ || _loc2_)
                        {
                           §§goto(addr87);
                        }
                     }
                     §§goto(addr88);
                  }
               }
               addr87:
               return true;
            }
            §§goto(addr78);
         }
         §§goto(addr74);
      }
      
      private function §"!T§(param1:§!3§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:Rectangle = null;
         var _loc7_:§1P§ = null;
         var _loc5_:§#`§;
         if(!(_loc5_ = this.§3"#§[param1.mName]))
         {
            _loc6_ = param1.§?!-§.clone();
            _loc7_ = new §1P§(param2,_loc6_,false);
            _loc5_ = new §#`§(_loc7_,param3,_loc6_,param1.§1!3§,param1.§;V§,param4);
            if(_loc8_)
            {
               this.§3"#§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §6!U§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(null);
            if(!(_loc6_ && _loc3_))
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc5_ || _loc1_)
               {
                  addr42:
                  var texture:Texture = null;
                  if(_loc5_)
                  {
                     §§goto(addr46);
                  }
                  §§goto(addr49);
               }
               addr46:
               if(!§<!?§.§&"#§)
               {
                  addr49:
                  var _loc2_:int = 0;
                  var _loc3_:* = this.§]e§;
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     if(_loc5_ || this)
                     {
                        §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                        if(_loc5_ || _loc1_)
                        {
                           try
                           {
                              §§push(§§newactivation());
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§pop().§§slot[2] = this.§]e§[bd];
                                 addr121:
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
                     §§goto(addr121);
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      public function §&u§(param1:String) : §#`§
      {
         return this.§3"#§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Texture = this.§]e§[param1];
         if(!_loc5_)
         {
            if(_loc3_)
            {
               if(_loc4_ || this)
               {
                  return _loc3_;
               }
            }
         }
         _loc3_ = §<!?§.§ "§(param1,param2);
         if(_loc4_)
         {
            this.§]e§[param1] = _loc3_;
         }
         do
         {
            this.§9!D§(_loc3_,param1,true);
         }
         while(!(_loc4_ || this));
         
         return _loc3_;
      }
      
      public function §9!D§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
                  addr228:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr229:
                     while(true)
                     {
                     }
                  }
               }
               addr227:
            }
            loop2:
            while(true)
            {
               if(param2)
               {
                  if(!_loc7_)
                  {
                     §§push(this);
                     §§push(this.§#!2§);
                     §§push(_loc4_ * param2.width);
                     if(_loc8_ || param1)
                     {
                        §§push(§§pop() * param2.height);
                        if(_loc8_)
                        {
                           §§push(§§pop() * 4);
                        }
                     }
                     §§pop().§#!2§ = §§pop() + §§pop();
                  }
                  while(true)
                  {
                  }
                  addr224:
               }
               loop4:
               while(param1)
               {
                  if(_loc8_)
                  {
                     if(!_loc7_)
                     {
                        if(_loc8_)
                        {
                           §§push(param1.width);
                           loop6:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop7:
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 addr185:
                                 while(true)
                                 {
                                    §§push(param1.height);
                                    if(!(_loc8_ || param3))
                                    {
                                       continue loop6;
                                    }
                                    §§push(int(§§pop()));
                                    if(_loc7_)
                                    {
                                       continue loop7;
                                    }
                                    if(!(_loc7_ && param3))
                                    {
                                       _loc6_ = §§pop();
                                       if(!_loc8_)
                                       {
                                          continue;
                                       }
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       addr58:
                                       §§push(_loc5_);
                                       if(_loc8_)
                                       {
                                          addr63:
                                          §§push(1);
                                          if(_loc8_ || param2)
                                          {
                                             §§push(§§pop() >= §§pop());
                                             if(!_loc7_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr75:
                                                   §§pop();
                                                   addr76:
                                                   if(_loc8_ || param1)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc8_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§push(1);
                                                            if(!(_loc7_ && this))
                                                            {
                                                               §§push(§§pop() >= §§pop());
                                                               if(_loc8_)
                                                               {
                                                                  addr43:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr110:
                                                                           §§goto(addr58);
                                                                        }
                                                                        break loop4;
                                                                     }
                                                                     §§goto(addr76);
                                                                  }
                                                                  §§push(this);
                                                                  §§push(this.§@^§);
                                                                  §§push(_loc4_ * _loc5_);
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(_loc8_)
                                                                     {
                                                                        addr143:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc8_ || param3)
                                                                        {
                                                                           §§push(4);
                                                                        }
                                                                        §§pop().§@^§ = §§pop() + §§pop();
                                                                        addr115:
                                                                        _loc5_ >>= 1;
                                                                        addr114:
                                                                        addr113:
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc8_)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr91:
                                                                                 §§push(1);
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    addr99:
                                                                                    _loc6_ = §§pop() >> §§pop();
                                                                                    §§goto(addr110);
                                                                                 }
                                                                                 §§goto(addr114);
                                                                              }
                                                                              §§goto(addr113);
                                                                           }
                                                                           §§goto(addr99);
                                                                        }
                                                                        addr145:
                                                                        §§goto(addr145);
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§goto(addr143);
                                                               }
                                                               §§goto(addr75);
                                                            }
                                                            §§goto(addr63);
                                                         }
                                                         §§goto(addr115);
                                                      }
                                                      §§goto(addr58);
                                                   }
                                                   §§goto(addr143);
                                                }
                                                §§goto(addr43);
                                             }
                                             §§goto(addr75);
                                          }
                                          §§goto(addr91);
                                       }
                                       §§goto(addr99);
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr227);
                        }
                        §§goto(addr228);
                     }
                     else
                     {
                        §§goto(addr224);
                     }
                  }
                  §§goto(addr185);
               }
               return;
            }
         }
         §§goto(addr229);
      }
      
      public function §9Y§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§<R§);
            if(!(_loc2_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     addr45:
                     this.§<R§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
                  }
               }
               return this.§<R§;
            }
         }
         §§goto(addr45);
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§]e§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(_loc6_)
               {
                  break;
               }
               if(this.§]e§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(!_loc6_)
         {
            this.§9!D§(param1,_loc3_,false);
            do
            {
               if(_loc3_)
               {
                  _loc3_.dispose();
                  addr112:
                  while(true)
                  {
                  }
                  addr112:
               }
               while(true)
               {
                  delete this.§]e§[_loc2_];
                  param1.dispose();
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§goto(addr112);
               }
            }
            while(!_loc7_);
            
            return;
         }
         §§goto(addr112);
      }
      
      public function §6n§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§#`§ = this.§&u§(param1);
         if(!(_loc4_ && param1))
         {
            if(_loc2_ == null)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§push(this.§&u§(param1 + "_1"));
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc2_ = §§pop();
                     addr72:
                     if(_loc2_ == null)
                     {
                        if(_loc3_)
                        {
                           addr82:
                           _loc2_ = this.§&u§(param1 + "_01");
                           §§goto(addr84);
                        }
                        return null;
                     }
                     addr84:
                     if(_loc2_ == null)
                     {
                        if(_loc4_)
                        {
                           §§goto(addr91);
                        }
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr82);
               }
               §§goto(addr91);
            }
            §§goto(addr72);
         }
         addr91:
         return _loc2_.bitmapData;
      }
   }
}
