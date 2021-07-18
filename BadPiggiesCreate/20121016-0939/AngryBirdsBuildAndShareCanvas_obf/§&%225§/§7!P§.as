package §&"5§
{
   import §,I§.§5i§;
   import §,I§.§7!c§;
   import §6p§.§?%§;
   import §7R§.§?P§;
   import §7R§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §7!P§ extends EventDispatcher
   {
      
      private static const §@"$§:int = 2;
      
      private static const §8J§:int = 2048;
      
      private static var §^!@§:§7!P§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@"$§ = 2;
            do
            {
               §8J§ = 2048;
            }
            while(!_loc2_);
            
         }
      }
      
      private var §>!L§:Dictionary;
      
      private var §[,§:Vector.<§5i§>;
      
      private var §0!W§:Dictionary;
      
      private var §>!S§:Boolean;
      
      private var §"E§:String;
      
      private var §[!4§:Texture;
      
      private var §&"?§:int;
      
      private var §`!A§:int;
      
      public function §7!P§(param1:String = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
            while(true)
            {
               this.§[,§ = new Vector.<§5i§>();
               while(!_loc2_)
               {
                  this.§>!L§ = new Dictionary();
                  loop3:
                  while(!(_loc2_ && _loc2_))
                  {
                     this.§"E§ = param1;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr50:
                        if(_loc2_)
                        {
                           while(true)
                           {
                              this.§0!W§ = new Dictionary();
                              continue loop3;
                              §§goto(addr50);
                           }
                           addr71:
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public static function get §2=§() : §7!P§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§^!@§);
            if(!(_loc1_ && §7!P§))
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §^!@§ = new §7!P§();
                     addr54:
                     §§push(§^!@§);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         §§goto(addr54);
      }
      
      public function get §#!%§() : int
      {
         return this.§&"?§;
      }
      
      public function get §3!Q§() : int
      {
         return this.§`!A§;
      }
      
      public function get id() : String
      {
         return this.§"E§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§6!L§ = null;
         var _loc2_:§5i§ = null;
         if(_loc6_ || _loc2_)
         {
            if(this.§>!L§)
            {
               addr33:
               var _loc3_:int = 0;
               var _loc4_:* = this.§>!L§;
               loop15:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc5_ && this))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!(_loc5_ && _loc3_))
                        {
                           this.§^y§(_loc1_.texture.parent);
                           if(!(_loc5_ && _loc1_))
                           {
                              _loc1_.dispose();
                           }
                        }
                        continue;
                     }
                     if(!(_loc5_ && this))
                     {
                        if(_loc6_)
                        {
                           if(!_loc5_)
                           {
                              this.§>!L§ = null;
                              if(_loc6_)
                              {
                                 addr94:
                                 if(this.§[,§)
                                 {
                                    if(_loc6_)
                                    {
                                       _loc3_ = 0;
                                       if(!(_loc5_ && this))
                                       {
                                          addr118:
                                          _loc4_ = this.§[,§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop15;
                                          }
                                          addr133:
                                       }
                                       if(_loc6_)
                                       {
                                          this.§[,§ = null;
                                          loop1:
                                          while(true)
                                          {
                                             addr209:
                                             while(true)
                                             {
                                                if(!this.§0!W§)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§[!4§);
                                                      if(!(_loc5_ && _loc1_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(this.§[!4§);
                                                               addr206:
                                                               while(true)
                                                               {
                                                                  §§pop().dispose();
                                                                  addr207:
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     this.§[!4§ = null;
                                                                     addr188:
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.§[,§ = new Vector.<§5i§>();
                                                            loop4:
                                                            while(!(_loc5_ && _loc2_))
                                                            {
                                                               this.§>!L§ = new Dictionary();
                                                               loop5:
                                                               while(_loc6_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§0!W§ = new Dictionary();
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     if(_loc5_ && this)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr207);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                            addr212:
                                                            while(true)
                                                            {
                                                               this.§0!W§ = null;
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                   addr193:
                                                }
                                                §§goto(addr212);
                                             }
                                          }
                                       }
                                       §§goto(addr192);
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr212);
                        }
                     }
                     §§goto(addr118);
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
                  §§goto(addr118);
               }
            }
            §§goto(addr94);
         }
         §§goto(addr33);
      }
      
      public function §@!@§(param1:§5i§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§>!S§)
            {
               loop0:
               while(true)
               {
                  if(this.§[,§.indexOf(param1) < 0)
                  {
                     while(true)
                     {
                        this.§[,§.push(param1);
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           return;
                        }
                        addr84:
                     }
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                  }
                  if(!(_loc3_ && _loc3_))
                  {
                     return;
                  }
                  addr85:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr84);
         }
         §§goto(addr85);
      }
      
      private function §@!X§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:§5i§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
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
                  if(_loc11_)
                  {
                     §§push(_loc9_.scale);
                     if(_loc11_ || param1)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc12_)
                        {
                           addr68:
                           _loc7_ = §§pop();
                           if(!_loc11_)
                           {
                              addr76:
                              break;
                           }
                           addr71:
                        }
                        else
                        {
                           addr74:
                           if(§§pop() != _loc7_)
                           {
                              §§goto(addr76);
                           }
                        }
                        _loc10_ = _loc9_.bitmapData;
                        if(_loc11_)
                        {
                           §§push(_loc2_);
                           loop1:
                           while(true)
                           {
                              if(§§pop() + _loc10_.width + §@"$§ >= §8J§)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr280:
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
                                             addr267:
                                             addr251:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr268:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   addr269:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr270:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr262:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr263:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             loop14:
                                             while(_loc11_ || _loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc12_ && this))
                                                   {
                                                      §§push(_loc4_);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            loop17:
                                                            while(!_loc12_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  addr202:
                                                                  loop25:
                                                                  while(!_loc12_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     while(_loc11_)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        loop27:
                                                                        while(_loc11_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_.height + §@"$§ > _loc6_)
                                                                              {
                                                                                 loop19:
                                                                                 while(!_loc12_)
                                                                                 {
                                                                                    if(!(_loc12_ && _loc3_))
                                                                                    {
                                                                                       §§push(int(_loc10_.height + §@"$§));
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc12_ && this))
                                                                                          {
                                                                                             addr175:
                                                                                             if(!(_loc12_ && _loc3_))
                                                                                             {
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§push(_loc6_);
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc11_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(int(§§pop()));
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§goto(addr268);
                                                                                                      }
                                                                                                      §§goto(addr267);
                                                                                                      addr88:
                                                                                                      if(_loc11_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  §§goto(addr103);
                                                                                                               }
                                                                                                               addr227:
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  addr229:
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop27;
                                                                                                }
                                                                                                §§goto(addr269);
                                                                                             }
                                                                                             while(!(_loc12_ && this))
                                                                                             {
                                                                                                continue loop1;
                                                                                                §§goto(addr175);
                                                                                             }
                                                                                             continue loop3;
                                                                                             addr231:
                                                                                          }
                                                                                          continue loop25;
                                                                                       }
                                                                                       continue loop25;
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§goto(addr270);
                                                                              }
                                                                              §§goto(addr84);
                                                                           }
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr262);
                                                               }
                                                            }
                                                            §§goto(addr263);
                                                         }
                                                         §§goto(addr137);
                                                      }
                                                   }
                                                   §§goto(addr202);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    if(§§pop() + _loc10_.height + §@"$§ >= §8J§)
                                    {
                                       §§goto(addr227);
                                    }
                                    else
                                    {
                                       §§goto(addr231);
                                       §§push(_loc2_);
                                    }
                                    §§goto(addr280);
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr229);
                           }
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr76);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr74);
            }
            §§goto(addr71);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §[q§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:§5i§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§0;§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§7!c§ = null;
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
               if(!(_loc15_ || param2))
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(_loc15_)
               {
                  §§push(!isNaN(_loc7_));
                  if(!(_loc14_ && param2))
                  {
                     if(§§pop())
                     {
                        if(!_loc14_)
                        {
                           §§pop();
                           if(_loc15_ || param1)
                           {
                              §§push(_loc7_);
                              if(_loc15_)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(!_loc14_)
                                 {
                                    addr93:
                                    if(!§§pop())
                                    {
                                       if(!_loc14_)
                                       {
                                          addr96:
                                          break;
                                       }
                                       addr108:
                                       _loc9_ = _loc8_.bitmapData;
                                       if(_loc15_)
                                       {
                                          §§push(_loc3_);
                                          loop2:
                                          while(true)
                                          {
                                             if(§§pop() + _loc9_.width + §@"$§ > param2.width)
                                             {
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr221:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr222:
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         addr204:
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop() + _loc5_));
                                                            loop10:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     addr181:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc15_ || param2))
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        addr198:
                                                                        _loc5_ = §§pop();
                                                                        while(_loc14_)
                                                                        {
                                                                           continue loop7;
                                                                           §§goto(addr198);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr220:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc14_ && _loc3_))
                                                {
                                                   if(_loc15_ || this)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   §§goto(addr204);
                                                }
                                                §§goto(addr181);
                                             }
                                          }
                                       }
                                       §§goto(addr222);
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(_loc15_ || _loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr93);
                              }
                              _loc7_ = §§pop();
                              §§goto(addr108);
                           }
                           §§goto(addr96);
                        }
                     }
                  }
                  §§goto(addr93);
               }
               §§goto(addr108);
            }
            return _loc6_;
         }
      }
      
      public function §;"#§() : Boolean
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc1_:§5i§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§0;§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§7!c§ = null;
         if(_loc14_)
         {
            §§push(§?%§.§]p§());
            if(_loc14_)
            {
               if(!§§pop())
               {
                  if(!_loc15_)
                  {
                     addr52:
                     §§push(false);
                     if(!(_loc15_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr63:
                     §§push(this.§>!S§);
                     if(_loc14_)
                     {
                        addr67:
                        if(§§pop())
                        {
                           if(!_loc15_)
                           {
                              §§goto(addr71);
                           }
                        }
                        var _loc2_:Array = [];
                        var _loc12_:int = 0;
                        var _loc13_:* = this.§[,§;
                        loop0:
                        while(true)
                        {
                           §§push(§§hasnext(_loc13_,_loc12_));
                           if(!_loc15_)
                           {
                              if(§§pop())
                              {
                                 _loc1_ = §§nextvalue(_loc12_,_loc13_);
                                 if(_loc14_ || _loc3_)
                                 {
                                    if(_loc1_.§6!]§ <= 0)
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
                              if(!(_loc15_ && this))
                              {
                                 if(!_loc15_)
                                 {
                                    if(_loc14_ || _loc1_)
                                    {
                                       while(_loc2_.length > 0)
                                       {
                                          _loc3_ = this.§@!X§(_loc2_);
                                          if(_loc14_)
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
                                          if((_loc5_ = this.§[q§(_loc2_,_loc4_)).length == 0)
                                          {
                                             if(!_loc15_)
                                             {
                                                throw new Error("Found too large sprite sheet image!");
                                             }
                                          }
                                          _loc6_ = this.§&#§(_loc4_);
                                          if(!_loc15_)
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
                                                addr296:
                                             }
                                             for(; §§pop() < _loc5_.length; §§goto(addr296))
                                             {
                                                _loc1_ = (_loc8_ = _loc5_[_loc7_]).§0!=§;
                                                if(!(_loc15_ && this))
                                                {
                                                   §§push(_loc1_.§6!]§);
                                                   if(_loc14_ || _loc3_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc14_ || _loc2_)
                                                      {
                                                         addr237:
                                                         _loc9_ = §§pop();
                                                         if(!(_loc15_ && _loc1_))
                                                         {
                                                            addr245:
                                                            §§push(0);
                                                            if(_loc14_ || _loc3_)
                                                            {
                                                               addr253:
                                                               _loc10_ = §§pop();
                                                               if(!(_loc15_ && _loc2_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_);
                                                                  }
                                                                  addr293:
                                                                  if(_loc14_)
                                                                  {
                                                                     addr295:
                                                                     _loc7_++;
                                                                  }
                                                                  continue;
                                                                  addr290:
                                                               }
                                                               §§goto(addr295);
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop() < _loc9_)
                                                               {
                                                                  _loc11_ = _loc1_.§["7§(_loc10_);
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     this.§,!j§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                     if(!(_loc15_ && this))
                                                                     {
                                                                        _loc10_++;
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                         }
                                                         §§goto(addr295);
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr245);
                                             }
                                          }
                                       }
                                       if(_loc14_)
                                       {
                                          _loc12_ = 0;
                                          if(!_loc15_)
                                          {
                                             _loc13_ = this.§[,§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc13_,_loc12_));
                                                break loop0;
                                             }
                                             addr333:
                                             if(_loc14_ || _loc3_)
                                             {
                                                this.§[,§ = new Vector.<§5i§>();
                                                addr341:
                                             }
                                             do
                                             {
                                                this.§>!S§ = true;
                                             }
                                             while(!(_loc14_ || _loc3_));
                                             
                                             addr332:
                                             addr330:
                                          }
                                          §§goto(addr333);
                                       }
                                       return true;
                                    }
                                    §§goto(addr341);
                                 }
                                 §§goto(addr333);
                              }
                              §§goto(addr332);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc12_,_loc13_);
                              if(_loc14_ || _loc3_)
                              {
                                 _loc1_.dispose();
                              }
                              continue;
                           }
                           §§goto(addr333);
                        }
                     }
                  }
                  addr71:
                  return true;
               }
               §§goto(addr63);
            }
            §§goto(addr67);
         }
         §§goto(addr52);
      }
      
      private function §,!j§(param1:§7!c§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:Rectangle = null;
         var _loc7_:§?P§ = null;
         var _loc5_:§6!L§;
         if(!(_loc5_ = this.§>!L§[param1.mName]))
         {
            _loc6_ = param1.§5l§.clone();
            _loc7_ = new §?P§(param2,_loc6_,false);
            _loc5_ = new §6!L§(_loc7_,param3,_loc6_,param1.§>!v§,param1.§>!J§,param4);
            if(_loc8_ || param1)
            {
               this.§>!L§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §;!2§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§push(null);
            if(!(_loc5_ && _loc3_))
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc5_ && _loc3_))
               {
                  addr43:
                  var texture:Texture = null;
                  if(_loc6_ || _loc3_)
                  {
                     §§goto(addr52);
                  }
                  §§goto(addr55);
               }
               addr52:
               if(!§?%§.§ !O§)
               {
                  addr55:
                  var _loc2_:int = 0;
                  var _loc3_:* = this.§0!W§;
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
                              if(_loc6_ || this)
                              {
                                 addr91:
                                 §§pop().§§slot[2] = this.§0!W§[bd];
                                 addr112:
                                 if(!(_loc5_ && this))
                                 {
                                    addr105:
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
                           §§goto(addr112);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr91);
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §12§(param1:String) : §6!L§
      {
         return this.§>!L§[param1];
      }
      
      public function §&#§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Texture = this.§0!W§[param1];
         if(_loc4_)
         {
            if(_loc3_)
            {
               if(_loc4_)
               {
                  return _loc3_;
               }
            }
         }
         _loc3_ = §?%§.§1J§(param1,param2);
         if(_loc4_)
         {
            this.§0!W§[param1] = _loc3_;
         }
         do
         {
            this.§'!m§(_loc3_,param1,true);
         }
         while(_loc5_);
         
         return _loc3_;
      }
      
      public function §'!m§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
                  addr253:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr254:
                     while(true)
                     {
                     }
                  }
                  addr200:
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
                  addr207:
                  §§push(param1.height);
                  if(!_loc7_)
                  {
                     §§push(int(§§pop()));
                     if(_loc8_ || param2)
                     {
                        if(!_loc7_)
                        {
                           _loc6_ = §§pop();
                           if(_loc8_)
                           {
                              addr169:
                              if(_loc8_ || param3)
                              {
                                 if(_loc7_ && param2)
                                 {
                                    §§goto(addr254);
                                 }
                                 loop11:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(1);
                                       loop13:
                                       while(_loc8_ || param1)
                                       {
                                          §§push(§§pop() >= §§pop());
                                          loop14:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      loop16:
                                                      while(!(_loc7_ && this))
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc8_ || param3)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(1);
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  §§push(§§pop() >= §§pop());
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  addr82:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop16;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr93:
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     addr110:
                                                                     if(!_loc7_)
                                                                     {
                                                                        break loop13;
                                                                     }
                                                                     §§push(§§pop() >> 1);
                                                                  }
                                                                  _loc5_ = §§pop();
                                                                  §§goto(addr93);
                                                                  §§push(_loc6_);
                                                                  addr113:
                                                               }
                                                            }
                                                            addr106:
                                                            _loc6_ = §§pop();
                                                            continue loop11;
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(this);
                                                      §§push(this.§&"?§);
                                                      §§push(_loc4_ * _loc5_);
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc8_)
                                                            {
                                                               addr147:
                                                               §§push(§§pop() * 4);
                                                            }
                                                            §§pop().§&"?§ = §§pop() + §§pop();
                                                            §§goto(addr110);
                                                            §§push(_loc5_);
                                                            addr150:
                                                         }
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   §§goto(addr150);
                                                }
                                                if(!_loc8_)
                                                {
                                                   continue loop11;
                                                }
                                                if(!(_loc7_ && param3))
                                                {
                                                   §§goto(addr65);
                                                }
                                                §§goto(addr113);
                                                addr52:
                                             }
                                             §§goto(addr82);
                                          }
                                       }
                                       if(_loc7_)
                                       {
                                          §§goto(addr110);
                                       }
                                       §§goto(addr106);
                                    }
                                 }
                                 addr183:
                              }
                              loop7:
                              while(true)
                              {
                                 if(_loc8_ || param1)
                                 {
                                    §§push(param1.width);
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr197:
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                          addr198:
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                §§goto(addr200);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr184);
                                                }
                                                addr249:
                                             }
                                          }
                                          §§goto(addr253);
                                       }
                                       §§goto(addr207);
                                    }
                                    addr196:
                                 }
                                 addr211:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§`!A§);
                                    §§push(_loc4_ * param2.width);
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(§§pop() * param2.height);
                                       if(_loc8_ || param1)
                                       {
                                          §§push(§§pop() * 4);
                                       }
                                    }
                                    §§pop().§`!A§ = §§pop() + §§pop();
                                    §§goto(addr249);
                                    continue loop7;
                                 }
                              }
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr253);
                     }
                     §§goto(addr197);
                  }
                  §§goto(addr196);
               }
            }
            while(true)
            {
               if(param2)
               {
                  §§goto(addr211);
               }
               addr184:
               while(param1)
               {
                  continue loop7;
               }
               addr65:
               return;
               §§goto(addr254);
            }
         }
         §§goto(addr183);
      }
      
      public function §4!A§() : Texture
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§[!4§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || this)
                  {
                     this.§[!4§ = this.§&#§(new BitmapData(40,40,false,16711935));
                     addr61:
                     §§push(this.§[!4§);
                  }
               }
               §§goto(addr61);
            }
            return §§pop();
         }
         §§goto(addr61);
      }
      
      public function §^y§(param1:Texture) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§0!W§;
         while(true)
         {
            loop0:
            for(_loc2_ in _loc5_)
            {
               if(!_loc7_)
               {
                  if(this.§0!W§[_loc2_] != param1)
                  {
                     continue;
                  }
               }
               _loc3_ = _loc2_ as BitmapData;
               if(_loc7_)
               {
                  if(false)
                  {
                     break;
                  }
                  continue;
               }
               this.§'!m§(param1,_loc3_,false);
               while(true)
               {
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        delete this.§0!W§[_loc2_];
                        break loop0;
                     }
                     addr104:
                  }
                  _loc3_.dispose();
                  §§goto(addr91);
               }
            }
            return;
         }
         while(true)
         {
            param1.dispose();
            if(_loc7_ && _loc3_)
            {
               §§goto(addr104);
            }
            addr91:
            while(_loc6_)
            {
               break loop0;
            }
            continue loop1;
            return;
         }
      }
      
      public function §"k§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§6!L§ = this.§12§(param1);
         if(!_loc4_)
         {
            if(_loc2_ == null)
            {
               if(_loc3_ || _loc2_)
               {
                  addr33:
                  §§push(this.§12§(param1 + "_1"));
                  if(_loc3_ || _loc2_)
                  {
                     _loc2_ = §§pop();
                     addr57:
                     if(_loc2_ == null)
                     {
                        if(!_loc4_)
                        {
                           addr67:
                           _loc2_ = this.§12§(param1 + "_01");
                           §§goto(addr69);
                        }
                        return null;
                     }
                     addr69:
                     if(_loc2_ == null)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr86);
                        }
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr67);
               }
               addr86:
               return _loc2_.bitmapData;
            }
            §§goto(addr57);
         }
         §§goto(addr33);
      }
   }
}
