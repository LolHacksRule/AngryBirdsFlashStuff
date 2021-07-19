package §4W§
{
   import § !+§.§0Z§;
   import §'!H§.§3^§;
   import §'!H§.§?m§;
   import §2!-§.§!!=§;
   import §2!-§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §!]§ extends EventDispatcher
   {
      
      private static const §!x§:int = 2;
      
      private static const §+! §:int = 2048;
      
      private static var §2z§:§!]§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §!]§))
         {
            §!x§ = 2;
            do
            {
               §+! § = 2048;
            }
            while(!(_loc2_ || §!]§));
            
         }
      }
      
      private var §9!3§:Dictionary;
      
      private var §&?§:Vector.<§3^§>;
      
      private var §1!J§:Dictionary;
      
      private var §+1§:Boolean;
      
      private var §]!E§:Texture;
      
      private var §6r§:int;
      
      private var §@D§:int;
      
      public function §!]§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§&?§ = new Vector.<§3^§>();
               loop2:
               while(!(_loc1_ && _loc2_))
               {
                  this.§1!J§ = new Dictionary();
                  if(!_loc1_)
                  {
                     addr46:
                     if(_loc1_)
                     {
                        while(true)
                        {
                           this.§9!3§ = new Dictionary();
                           continue loop2;
                           §§goto(addr46);
                        }
                        addr79:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public static function get §!!L§() : §!]§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§2z§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §2z§ = new §!]§();
                     addr53:
                     §§push(§2z§);
                  }
               }
               §§goto(addr53);
            }
            return §§pop();
         }
         §§goto(addr53);
      }
      
      public function get §^,§() : int
      {
         return this.§6r§;
      }
      
      public function get §<!H§() : int
      {
         return this.§@D§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§>c§ = null;
         var _loc2_:§3^§ = null;
         if(_loc6_)
         {
            if(this.§9!3§)
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§9!3§;
               loop13:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc6_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_)
                        {
                           this.§&!I§(_loc1_.texture.parent);
                           if(_loc5_ && _loc3_)
                           {
                              continue;
                           }
                        }
                        _loc1_.dispose();
                        continue;
                     }
                     if(!_loc5_)
                     {
                        if(_loc6_)
                        {
                           if(_loc6_ || _loc1_)
                           {
                              this.§9!3§ = null;
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr89:
                                 if(this.§&?§)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       _loc3_ = 0;
                                       addr99:
                                       if(_loc6_)
                                       {
                                          _loc4_ = this.§&?§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop13;
                                          }
                                          addr131:
                                          if(_loc6_ || _loc2_)
                                          {
                                             this.§&?§ = null;
                                             loop11:
                                             while(true)
                                             {
                                                addr204:
                                                while(true)
                                                {
                                                   if(this.§1!J§)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         this.§1!J§ = null;
                                                      }
                                                      while(true)
                                                      {
                                                      }
                                                      addr222:
                                                   }
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(this.§]!E§);
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§]!E§);
                                                               addr199:
                                                               while(true)
                                                               {
                                                                  §§pop().dispose();
                                                                  addr200:
                                                                  addr202:
                                                                  while(!_loc6_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§]!E§ = null;
                                                                     addr188:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           break loop7;
                                                                        }
                                                                        §§goto(addr200);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr197:
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                   while(true)
                                                   {
                                                      this.§&?§ = new Vector.<§3^§>();
                                                      while(true)
                                                      {
                                                         this.§9!3§ = new Dictionary();
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr222);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr188);
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                      return;
                                                   }
                                                }
                                             }
                                             addr139:
                                             addr226:
                                          }
                                          §§goto(addr202);
                                          addr130:
                                          addr128:
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr99);
                           }
                           §§goto(addr226);
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
                     if(_loc6_)
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr131);
               }
            }
            §§goto(addr89);
         }
         §§goto(addr28);
      }
      
      public function §?1§(param1:§3^§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§+1§)
            {
               loop0:
               while(this.§&?§.indexOf(param1) < 0)
               {
                  while(true)
                  {
                     this.§&?§.push(param1);
                     if(_loc3_ || _loc2_)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           return;
                        }
                        break loop0;
                     }
                     if(!(_loc3_ || _loc3_))
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        return;
                     }
                     addr85:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr86);
      }
      
      private function §]S§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:§3^§ = null;
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
            if(!(_loc12_ && _loc2_))
            {
               if(_loc8_ == 0)
               {
                  if(_loc11_ || param1)
                  {
                     §§push(_loc9_.scale);
                     if(_loc11_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc11_ || this)
                        {
                           _loc7_ = §§pop();
                           if(!_loc11_)
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
                              if(§§pop() + _loc10_.width + §!x§ >= §+! §)
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
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr302:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr303:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   addr304:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr305:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr297:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr298:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr157:
                                             if(_loc12_)
                                             {
                                                continue;
                                             }
                                             _loc5_ = §§pop();
                                             loop28:
                                             for(; !_loc12_; while(true)
                                             {
                                                _loc8_++;
                                                if(!(_loc12_ && _loc2_))
                                                {
                                                   if(_loc11_ || param1)
                                                   {
                                                      while(false)
                                                      {
                                                         §§goto(addr107);
                                                      }
                                                      continue loop0;
                                                      addr105:
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop28;
                                             })
                                             {
                                                addr172:
                                                if(!(_loc11_ || param1))
                                                {
                                                   loop24:
                                                   while(true)
                                                   {
                                                      if(_loc11_ || _loc2_)
                                                      {
                                                         §§push(int(_loc10_.height + §!x§));
                                                         loop25:
                                                         while(true)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               addr201:
                                                               if(_loc11_ || _loc2_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  break loop28;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop() + (_loc10_.width + §!x§)));
                                                                  loop15:
                                                                  while(_loc11_ || _loc2_)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr233:
                                                                        addr216:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           addr234:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc12_ && _loc3_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    §§push(_loc2_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       break loop25;
                                                                                    }
                                                                                 }
                                                                                 continue loop3;
                                                                                 addr235:
                                                                              }
                                                                              addr180:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc10_.height + §!x§ > _loc6_)
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                                 continue loop28;
                                                                              }
                                                                           }
                                                                        }
                                                                        if(_loc11_ || this)
                                                                        {
                                                                           if(_loc12_ && _loc3_)
                                                                           {
                                                                              break loop24;
                                                                              addr107:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    continue loop25;
                                                                                 }
                                                                                 if(!(_loc11_ || this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(_loc12_ && _loc2_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§push(_loc6_);
                                                                                    if(!(_loc12_ && this))
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc11_ || this)
                                                                                          {
                                                                                             addr148:
                                                                                             §§push(int(§§pop()));
                                                                                             if(!(_loc12_ && _loc2_))
                                                                                             {
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   §§goto(addr157);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr233);
                                                                                                }
                                                                                             }
                                                                                             break loop25;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr302);
                                                                                       }
                                                                                       §§goto(addr303);
                                                                                    }
                                                                                    §§goto(addr234);
                                                                                 }
                                                                                 §§goto(addr297);
                                                                              }
                                                                              §§goto(addr148);
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr304);
                                                                  §§goto(addr201);
                                                               }
                                                               addr280:
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                         while(_loc11_ || _loc2_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            while(!(_loc12_ && this))
                                                            {
                                                               §§goto(addr180);
                                                               break loop28;
                                                            }
                                                            §§goto(addr298);
                                                         }
                                                         while(_loc11_)
                                                         {
                                                            if(§§pop() + _loc10_.height + §!x§ >= §+! §)
                                                            {
                                                               break loop24;
                                                            }
                                                            §§goto(addr280);
                                                            §§push(_loc2_);
                                                            §§goto(addr244);
                                                         }
                                                         addr244:
                                                         continue loop1;
                                                         addr262:
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                   if(_loc12_ && this)
                                                   {
                                                      §§goto(addr305);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!(_loc12_ && param1))
                                                {
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr252);
                                             }
                                             §§goto(addr305);
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr262);
                              }
                           }
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr81);
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
      
      private function §8!E§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:§3^§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§4!U§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§?m§ = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Array = [];
         var _loc7_:* = Number(NaN);
         while(true)
         {
            §§push(param1);
            while(§§pop().length > 0)
            {
               §§push(param1);
               if(_loc15_ && _loc3_)
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(!(_loc15_ && this))
               {
                  §§push(!isNaN(_loc7_));
                  if(!(_loc15_ && this))
                  {
                     if(§§pop())
                     {
                        if(!_loc15_)
                        {
                           addr80:
                           §§pop();
                           if(!(_loc15_ && param1))
                           {
                              §§push(_loc7_);
                              if(!_loc15_)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(_loc14_ || param2)
                                 {
                                    addr102:
                                    if(!§§pop())
                                    {
                                       if(!_loc15_)
                                       {
                                          break;
                                       }
                                       addr112:
                                       _loc9_ = _loc8_.bitmapData;
                                       if(!_loc15_)
                                       {
                                          §§push(_loc3_);
                                          loop2:
                                          while(true)
                                          {
                                             if(§§pop() + _loc9_.width + §!x§ > param2.width)
                                             {
                                                addr219:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop10:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr221:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc14_ || param2)
                                                         {
                                                            §§push(int(§§pop() + _loc5_));
                                                         }
                                                         loop6:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            addr209:
                                                            loop7:
                                                            while(true)
                                                            {
                                                               addr168:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr170:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc15_ && this))
                                                                     {
                                                                        if(!(_loc15_ && param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  addr195:
                                                                  _loc5_ = §§pop();
                                                                  continue loop7;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr219:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(_loc14_ || _loc3_)
                                                {
                                                   continue loop2;
                                                }
                                                §§goto(addr170);
                                             }
                                          }
                                       }
                                       §§goto(addr219);
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(_loc14_)
                                       {
                                          addr110:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc7_ = §§pop();
                                       §§goto(addr112);
                                    }
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr112);
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr80);
               }
               §§goto(addr112);
            }
            return _loc6_;
         }
      }
      
      public function §8!K§() : Boolean
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc1_:§3^§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§4!U§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§?m§ = null;
         if(_loc14_)
         {
            §§push(§0Z§.§ Z§());
            if(_loc14_)
            {
               if(!§§pop())
               {
                  if(!_loc15_)
                  {
                     §§push(false);
                     if(!(_loc15_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr75:
                     return true;
                  }
               }
               else
               {
                  addr68:
                  §§push(this.§+1§);
                  if(_loc14_)
                  {
                     addr72:
                     if(§§pop())
                     {
                        if(_loc14_)
                        {
                           §§goto(addr75);
                        }
                     }
                     var _loc2_:Array = [];
                     var _loc12_:int = 0;
                     var _loc13_:* = this.§&?§;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc13_,_loc12_));
                        if(!(_loc15_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc12_,_loc13_);
                              if(!_loc15_)
                              {
                                 if(_loc1_.§3!L§ > 0)
                                 {
                                    if(!(_loc15_ && _loc1_))
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
                                    while(_loc2_.length > 0)
                                    {
                                       _loc3_ = this.§]S§(_loc2_);
                                       _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                       if((_loc5_ = this.§8!E§(_loc2_,_loc4_)).length == 0)
                                       {
                                          if(!(_loc15_ && this))
                                          {
                                             throw new Error("Found too large sprite sheet image!");
                                          }
                                       }
                                       _loc6_ = this.§8E§(_loc4_);
                                       if(!(_loc15_ && _loc3_))
                                       {
                                          §§push(0);
                                          if(!(_loc15_ && this))
                                          {
                                             _loc7_ = §§pop();
                                             if(_loc15_ && _loc1_)
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                             }
                                             addr291:
                                          }
                                          for(; §§pop() < _loc5_.length; §§goto(addr291))
                                          {
                                             _loc1_ = (_loc8_ = _loc5_[_loc7_]).§^J§;
                                             if(!(_loc15_ && this))
                                             {
                                                §§push(_loc1_.§3!L§);
                                                if(_loc14_ || _loc1_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(!(_loc15_ && _loc2_))
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(_loc14_ || _loc2_)
                                                      {
                                                         addr250:
                                                         §§push(0);
                                                         if(!(_loc15_ && _loc1_))
                                                         {
                                                            addr258:
                                                            _loc10_ = §§pop();
                                                            if(_loc15_)
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
                                                            _loc11_ = _loc1_.§<f§(_loc10_);
                                                            if(!_loc15_)
                                                            {
                                                               this.§0i§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                               if(!_loc14_)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            _loc10_++;
                                                         }
                                                         if(_loc14_ || _loc2_)
                                                         {
                                                            _loc7_++;
                                                         }
                                                         continue;
                                                         addr281:
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                   §§goto(addr281);
                                                }
                                                §§goto(addr258);
                                             }
                                             §§goto(addr250);
                                          }
                                       }
                                    }
                                    if(!_loc15_)
                                    {
                                       _loc12_ = 0;
                                       if(_loc14_ || _loc3_)
                                       {
                                          addr310:
                                          _loc13_ = this.§&?§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc13_,_loc12_));
                                             break loop0;
                                          }
                                          addr330:
                                       }
                                       if(!(_loc15_ && this))
                                       {
                                          this.§&?§ = new Vector.<§3^§>();
                                          do
                                          {
                                             this.§+1§ = true;
                                          }
                                          while(_loc15_ && _loc3_);
                                          
                                          addr341:
                                          addr375:
                                       }
                                       return true;
                                    }
                                    §§goto(addr341);
                                 }
                                 §§goto(addr375);
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
                           if(_loc14_ || _loc2_)
                           {
                              _loc1_.dispose();
                           }
                           continue;
                        }
                        §§goto(addr310);
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr72);
         }
         §§goto(addr68);
      }
      
      private function §0i§(param1:§?m§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§!!=§ = null;
         var _loc5_:§>c§;
         if(!(_loc5_ = this.§9!3§[param1.mName]))
         {
            _loc6_ = param1.§[!D§.clone();
            _loc7_ = new §!!=§(param2,_loc6_,false);
            _loc5_ = new §>c§(_loc7_,param3,_loc6_,param1.§^D§,param1.§%B§,param4);
            if(_loc9_)
            {
               this.§9!3§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §"7§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && _loc3_))
         {
            §§push(null);
            if(!_loc5_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc5_)
               {
                  addr38:
                  var texture:Texture = null;
                  if(!(_loc5_ && this))
                  {
                     if(!§0Z§.§^$§)
                     {
                        addr50:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§1!J§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(!(_loc5_ && _loc2_))
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(_loc6_ || _loc1_)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(_loc6_ || _loc3_)
                                    {
                                       addr96:
                                       §§pop().§§slot[2] = this.§1!J§[bd];
                                       addr117:
                                       if(_loc6_ || _loc3_)
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
                              §§goto(addr117);
                           }
                           §§goto(addr96);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr50);
            }
         }
         §§goto(addr38);
      }
      
      public function §]]§(param1:String) : §>c§
      {
         return this.§9!3§[param1];
      }
      
      public function §8E§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Texture = this.§1!J§[param1];
         if(_loc4_ || _loc3_)
         {
            if(_loc3_)
            {
               if(!(_loc5_ && param2))
               {
                  return _loc3_;
               }
            }
         }
         _loc3_ = §0Z§.§4!8§(param1,param2);
         if(_loc4_ || _loc3_)
         {
            this.§1!J§[param1] = _loc3_;
         }
         do
         {
            this.§=r§(_loc3_,param1,true);
         }
         while(_loc5_ && param2);
         
         return _loc3_;
      }
      
      public function §=r§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc4_:* = 1;
         if(_loc7_ || param3)
         {
            if(!param3)
            {
               while(true)
               {
                  §§push(-1);
                  addr242:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr243:
                     while(true)
                     {
                     }
                  }
               }
               addr241:
            }
            loop3:
            while(true)
            {
               if(param2)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§@D§);
                     §§push(_loc4_ * param2.width);
                     if(!(_loc8_ && param1))
                     {
                        §§push(§§pop() * param2.height);
                        if(_loc7_ || param1)
                        {
                           addr224:
                           §§push(§§pop() * 4);
                        }
                        §§pop().§@D§ = §§pop() + §§pop();
                        while(true)
                        {
                           §§goto(addr183);
                        }
                     }
                     §§goto(addr224);
                  }
               }
               addr183:
               while(param1)
               {
                  while(true)
                  {
                     §§push(param1.width);
                     loop8:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop9:
                        while(!_loc8_)
                        {
                           _loc5_ = §§pop();
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 §§push(param1.height);
                                 if(_loc7_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc7_ || param2)
                                    {
                                       continue;
                                    }
                                    continue loop9;
                                 }
                                 continue loop8;
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                        §§goto(addr242);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr182);
      }
      
      public function §83§() : Texture
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§]!E§);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     this.§]!E§ = this.§8E§(new BitmapData(40,40,false,16711935));
                     addr46:
                  }
               }
               return this.§]!E§;
            }
         }
         §§goto(addr46);
      }
      
      public function §&!I§(param1:Texture) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§1!J§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(!_loc7_)
               {
                  break;
               }
               if(this.§1!J§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(!(_loc6_ && _loc3_))
         {
            this.§=r§(param1,_loc3_,false);
            loop1:
            do
            {
               if(_loc3_)
               {
                  while(true)
                  {
                     _loc3_.dispose();
                     addr112:
                     while(true)
                     {
                     }
                     addr83:
                     if(_loc7_ || _loc3_)
                     {
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  delete this.§1!J§[_loc2_];
                  while(!(_loc6_ && _loc3_))
                  {
                     param1.dispose();
                     if(_loc6_)
                     {
                        continue;
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr112);
               }
            }
            while(!_loc7_);
            
            return;
         }
         §§goto(addr112);
      }
      
      public function §?r§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§>c§ = this.§]]§(param1);
         if(!_loc3_)
         {
            if(_loc2_ == null)
            {
               if(_loc4_ || param1)
               {
                  §§push(this.§]]§(param1 + "_1"));
                  if(_loc4_)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr53);
                  }
                  §§goto(addr68);
               }
               §§goto(addr90);
            }
            addr53:
            if(_loc2_ == null)
            {
               if(_loc4_ || this)
               {
                  addr68:
                  _loc2_ = this.§]]§(param1 + "_01");
               }
               §§goto(addr90);
            }
            if(_loc2_ == null)
            {
               if(_loc4_ || _loc2_)
               {
                  addr90:
                  return null;
               }
            }
            return _loc2_.bitmapData;
         }
         §§goto(addr68);
      }
   }
}
