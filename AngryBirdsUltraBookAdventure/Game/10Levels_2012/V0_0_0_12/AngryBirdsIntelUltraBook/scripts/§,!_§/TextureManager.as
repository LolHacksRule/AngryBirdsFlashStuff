package §,!_§
{
   import §0P§.Starling;
   import §7i§.§ %§;
   import §7i§.Texture;
   import §`u§.§#!7§;
   import §`u§.SpriteSheetBase;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class TextureManager extends EventDispatcher
   {
      
      private static const §%u§:int = 2;
      
      private static const §+!&§:int = 2048;
      
      private static var §1E§:TextureManager;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%u§ = 2;
            do
            {
               §+!&§ = 2048;
            }
            while(!_loc2_);
            
         }
      }
      
      private var §@J§:Dictionary;
      
      private var §1m§:Vector.<SpriteSheetBase>;
      
      private var §-!h§:Dictionary;
      
      private var §]Z§:Boolean;
      
      private var §<!B§:String;
      
      private var §<8§:Texture;
      
      private var §,f§:int;
      
      private var §2Y§:int;
      
      public function TextureManager(param1:String = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§1m§ = new Vector.<SpriteSheetBase>();
            while(true)
            {
               this.§@J§ = new Dictionary();
               while(!(_loc2_ && _loc3_))
               {
                  continue loop0;
                  this.§-!h§ = new Dictionary();
                  do
                  {
                     this.§<!B§ = param1;
                  }
                  while(!(_loc3_ || _loc2_));
                  
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public static function get §8!X§() : TextureManager
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§1E§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     addr27:
                     §1E§ = new TextureManager();
                  }
               }
               return §1E§;
            }
         }
         §§goto(addr27);
      }
      
      public function get §3!-§() : int
      {
         return this.§,f§;
      }
      
      public function get §+I§() : int
      {
         return this.§2Y§;
      }
      
      public function get id() : String
      {
         return this.§<!B§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§;K§ = null;
         var _loc2_:SpriteSheetBase = null;
         if(_loc6_)
         {
            if(this.§@J§)
            {
               addr29:
               var _loc3_:int = 0;
               var _loc4_:* = this.§@J§;
               loop12:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!(_loc5_ && this))
                        {
                           this.unregisterBitmapDataTexture(_loc1_.texture.parent);
                           if(!(_loc6_ || _loc2_))
                           {
                              continue;
                           }
                        }
                        _loc1_.dispose();
                        continue;
                     }
                     if(_loc6_)
                     {
                        if(_loc6_ || this)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              this.§@J§ = null;
                              if(_loc6_ || _loc2_)
                              {
                                 addr97:
                                 §§push(Boolean(this.§1m§));
                                 if(!_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          _loc3_ = 0;
                                          if(_loc6_)
                                          {
                                             _loc4_ = this.§1m§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc4_,_loc3_));
                                                break loop12;
                                             }
                                             addr138:
                                             if(_loc6_)
                                             {
                                                this.§1m§ = null;
                                                loop1:
                                                while(true)
                                                {
                                                   addr242:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(this.§-!h§));
                                                      addr245:
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            continue loop1;
                                                         }
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §§push(this.§<8§);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!(_loc6_ || _loc3_))
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     addr238:
                                                                     this.§<8§.dispose();
                                                                     addr240:
                                                                     while(true)
                                                                     {
                                                                        this.§<8§ = null;
                                                                        addr202:
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                           }
                                                                           addr256:
                                                                           while(true)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr240:
                                                                  }
                                                                  §§goto(addr240);
                                                               }
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  this.§1m§ = new Vector.<SpriteSheetBase>();
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        this.§@J§ = new Dictionary();
                                                                        while(!(_loc5_ && _loc2_))
                                                                        {
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              this.§-!h§ = new Dictionary();
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    break loop5;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              continue;
                                                                              continue;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     §§goto(addr240);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr256);
                                             addr137:
                                             addr135:
                                          }
                                          §§goto(addr138);
                                       }
                                       §§goto(addr238);
                                    }
                                    §§goto(addr242);
                                 }
                                 §§goto(addr245);
                              }
                              §§goto(addr253);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr137);
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
                  §§goto(addr138);
               }
            }
            §§goto(addr97);
         }
         §§goto(addr29);
      }
      
      public function §,!j§(param1:SpriteSheetBase) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!this.§]Z§)
            {
               loop0:
               do
               {
                  if(this.§1m§.indexOf(param1) >= 0)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(_loc2_ || param1)
                        {
                           return;
                        }
                        addr90:
                        return;
                     }
                     loop1:
                     while(true)
                     {
                        addr28:
                        while(true)
                        {
                           this.§1m§.push(param1);
                           if(!(_loc3_ && param1))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr28);
               }
               while(!_loc2_);
               
               return;
               addr63:
            }
            §§goto(addr90);
         }
         §§goto(addr63);
      }
      
      private function §3!Y§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:SpriteSheetBase = null;
         var _loc10_:BitmapData = null;
         §§push(0);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc11_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc11_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc11_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:* = Number(1);
         §§push(0);
         if(_loc11_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         loop0:
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(!_loc12_)
            {
               if(_loc8_ == 0)
               {
                  if(!(_loc12_ && param1))
                  {
                     §§push(_loc9_.scale);
                     if(_loc11_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc12_ && _loc3_))
                        {
                           _loc7_ = §§pop();
                           if(_loc12_)
                           {
                              addr119:
                              break;
                           }
                        }
                        else
                        {
                           addr117:
                           if(§§pop() != _loc7_)
                           {
                              §§goto(addr119);
                           }
                        }
                        _loc10_ = _loc9_.bitmapData;
                        if(!_loc12_)
                        {
                           §§push(_loc2_);
                           if(_loc11_ || _loc3_)
                           {
                              if(§§pop() + _loc10_.width + §%u§ >= §+!&§)
                              {
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    addr359:
                                    §§push(0);
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr360:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                       }
                                    }
                                    addr359:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       addr320:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          addr321:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             addr322:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                addr323:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr312:
                                                   while(!_loc12_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         addr316:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr361:
                              }
                              loop10:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop11:
                                 while(true)
                                 {
                                    if(§§pop() + _loc10_.height + §%u§ < §+!&§)
                                    {
                                       §§push(_loc2_);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(int(§§pop() + (_loc10_.width + §%u§)));
                                          loop13:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             loop14:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                loop15:
                                                while(_loc11_)
                                                {
                                                   §§push(_loc4_);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            addr283:
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop()));
                                                               addr284:
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  addr285:
                                                                  while(!_loc12_)
                                                                  {
                                                                  }
                                                                  continue loop14;
                                                               }
                                                            }
                                                         }
                                                         addr282:
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc10_.height + §%u§ <= _loc6_)
                                                         {
                                                            loop28:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               if(!(_loc12_ && param1))
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     if(!(_loc12_ && param1))
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc11_)
                                                                        {
                                                                           addr148:
                                                                           if(_loc11_ || this)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 addr158:
                                                                                 §§push(int(§§pop()));
                                                                                 if(_loc12_ && param1)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 addr165:
                                                                                 _loc8_ = §§pop();
                                                                                 if(!(_loc11_ || param1))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc11_ || this)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!(_loc12_ && _loc3_))
                                                                                          {
                                                                                             continue loop28;
                                                                                          }
                                                                                          §§goto(addr361);
                                                                                       }
                                                                                       §§goto(addr165);
                                                                                    }
                                                                                    addr299:
                                                                                    break loop0;
                                                                                    addr229:
                                                                                 }
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          if(true)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(_loc11_ || _loc3_)
                                                                                             {
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  addr219:
                                                                                                                  §§push(int(§§pop()));
                                                                                                                  while(_loc11_)
                                                                                                                  {
                                                                                                                     continue loop11;
                                                                                                                     §§goto(addr148);
                                                                                                                  }
                                                                                                                  §§goto(addr283);
                                                                                                                  addr219:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr321);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr359);
                                                                                                         }
                                                                                                         §§goto(addr320);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                                §§goto(addr284);
                                                                                             }
                                                                                             §§goto(addr219);
                                                                                          }
                                                                                          §§goto(addr312);
                                                                                          addr193:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr282);
                                                                                       }
                                                                                       §§goto(addr283);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(int(_loc10_.height + §%u§));
                                                                                          continue loop12;
                                                                                       }
                                                                                       addr254:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(_loc11_ || _loc2_)
                                                                                    {
                                                                                       §§goto(addr193);
                                                                                    }
                                                                                    §§goto(addr323);
                                                                                    addr268:
                                                                                 }
                                                                                 §§goto(addr312);
                                                                                 §§goto(addr285);
                                                                              }
                                                                              §§goto(addr315);
                                                                           }
                                                                           §§goto(addr219);
                                                                        }
                                                                        §§goto(addr158);
                                                                     }
                                                                     §§goto(addr360);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr148);
                                                            }
                                                            §§goto(addr322);
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                   }
                                                }
                                                continue loop13;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr299);
                                 }
                              }
                           }
                           §§goto(addr359);
                        }
                        §§goto(addr299);
                     }
                  }
                  §§goto(addr119);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr117);
            }
            §§goto(addr119);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §=!W§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:SpriteSheetBase = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§+2§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§#!7§ = null;
         §§push(0);
         if(!_loc15_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(!_loc15_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!_loc15_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
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
                     §§push(Boolean(§§pop()));
                     if(!_loc15_)
                     {
                        addr74:
                        §§push(§§pop());
                        if(_loc14_ || param2)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(!_loc15_)
                           {
                              addr86:
                              §§pop();
                              if(_loc14_)
                              {
                                 §§push(_loc7_);
                                 if(_loc14_ || param1)
                                 {
                                    §§push(§§pop() == _loc8_.scale);
                                    if(!_loc15_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc15_)
                                       {
                                       }
                                       addr106:
                                       if(§§pop())
                                       {
                                          if(_loc14_)
                                          {
                                             addr109:
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc8_.scale);
                                          if(_loc14_ || param2)
                                          {
                                             addr120:
                                             _loc7_ = §§pop();
                                          }
                                          §§goto(addr120);
                                       }
                                       _loc9_ = _loc8_.bitmapData;
                                       if(_loc14_ || _loc3_)
                                       {
                                          §§push(_loc3_);
                                          loop2:
                                          while(true)
                                          {
                                             if(§§pop() + _loc9_.width + §%u§ > param2.width)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      loop10:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         addr244:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!(_loc15_ && param2))
                                                            {
                                                               §§push(int(§§pop() + _loc5_));
                                                            }
                                                            addr227:
                                                            while(!_loc14_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            _loc4_ = §§pop();
                                                            loop8:
                                                            while(true)
                                                            {
                                                               addr178:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc15_ && param1))
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        if(_loc15_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr227);
                                                                     }
                                                                  }
                                                                  addr192:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     _loc5_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           if(!_loc15_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr241:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(_loc14_)
                                                {
                                                   if(§§pop() + _loc9_.height + §%u§ > param2.height)
                                                   {
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                   }
                                                   if(_loc14_ || this)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr178);
                                                         }
                                                         else
                                                         {
                                                            _loc10_ = new §+2§();
                                                            if(_loc14_)
                                                            {
                                                               _loc10_.offset = new Point(_loc3_,_loc4_);
                                                               if(!_loc15_)
                                                               {
                                                                  _loc10_.§]!b§ = _loc8_;
                                                                  _loc6_.push(_loc10_);
                                                                  addr303:
                                                                  if(_loc14_)
                                                                  {
                                                                     addr276:
                                                                     §§push(int(_loc8_.§^h§));
                                                                     if(_loc14_ || param1)
                                                                     {
                                                                        _loc11_ = §§pop();
                                                                        if(_loc15_ && this)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        if(_loc14_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc15_)
                                                                           {
                                                                              if(_loc14_ || _loc3_)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    _loc12_ = §§pop();
                                                                                    if(!(_loc14_ || param1))
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr276);
                                                                                    }
                                                                                    addr372:
                                                                                    §§push(_loc12_);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       if(§§pop() < _loc11_)
                                                                                       {
                                                                                          _loc13_ = _loc8_.§-!k§(_loc12_);
                                                                                          if(!(_loc15_ && _loc3_))
                                                                                          {
                                                                                             _loc13_.§4!P§ = null;
                                                                                             addr353:
                                                                                             _loc13_.§4!E§.offset(_loc3_,_loc4_);
                                                                                             if(!(_loc15_ && param1))
                                                                                             {
                                                                                                §§push(_loc12_);
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§push(§§pop() + 1);
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                _loc12_ = §§pop();
                                                                                                if(!(_loc15_ && param2))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr353);
                                                                                                   }
                                                                                                   §§goto(addr372);
                                                                                                }
                                                                                                §§goto(addr353);
                                                                                                addr367:
                                                                                             }
                                                                                             addr371:
                                                                                             §§goto(addr371);
                                                                                          }
                                                                                          §§goto(addr367);
                                                                                       }
                                                                                       if(_loc14_ || param1)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc14_ || param1)
                                                                                          {
                                                                                             §§push(int(§§pop() + (_loc9_.width + §%u§)));
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                addr401:
                                                                                                _loc3_ = §§pop();
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   if(_loc9_.height + §%u§ > _loc5_)
                                                                                                   {
                                                                                                      if(_loc14_ || param2)
                                                                                                      {
                                                                                                      }
                                                                                                      addr442:
                                                                                                      param1.splice(0,1);
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§goto(addr442);
                                                                                                }
                                                                                                addr434:
                                                                                                _loc5_ = int(_loc9_.height + §%u§);
                                                                                                if(_loc15_ && param1)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§goto(addr442);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr434);
                                                                                       }
                                                                                       §§goto(addr442);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr401);
                                                                              }
                                                                              §§goto(addr276);
                                                                           }
                                                                           §§goto(addr401);
                                                                        }
                                                                        §§goto(addr303);
                                                                     }
                                                                     §§goto(addr401);
                                                                  }
                                                                  addr310:
                                                                  §§goto(addr310);
                                                                  addr319:
                                                               }
                                                               §§goto(addr442);
                                                            }
                                                            §§goto(addr319);
                                                         }
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr192);
                                             }
                                             break loop1;
                                          }
                                       }
                                       §§goto(addr241);
                                    }
                                    §§goto(addr106);
                                    §§push(Boolean(§§pop()));
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr109);
                           }
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr74);
               }
               §§goto(addr109);
            }
            return _loc6_;
         }
      }
      
      public function §0k§() : Boolean
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc1_:SpriteSheetBase = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§+2§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§#!7§ = null;
         if(!_loc14_)
         {
            §§push(Starling.§84§());
            if(_loc15_)
            {
               §§push(!§§pop());
               if(_loc15_)
               {
                  if(§§pop())
                  {
                     if(!_loc14_)
                     {
                        §§push(false);
                        if(!(_loc14_ && this))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr73:
                        §§push(this.§]Z§);
                        if(!(_loc14_ && _loc2_))
                        {
                           addr82:
                           if(§§pop())
                           {
                              if(_loc15_)
                              {
                                 §§push(true);
                              }
                              else
                              {
                                 addr87:
                                 var _loc2_:Array = [];
                                 var _loc12_:int = 0;
                                 var _loc13_:* = this.§1m§;
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc13_,_loc12_));
                                    if(!_loc14_)
                                    {
                                       if(§§pop())
                                       {
                                          _loc1_ = §§nextvalue(_loc12_,_loc13_);
                                          if(_loc15_ || this)
                                          {
                                             if(_loc1_.§^h§ <= 0)
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
                                       if(!(_loc14_ && _loc1_))
                                       {
                                          if(_loc15_ || _loc1_)
                                          {
                                             if(!_loc14_)
                                             {
                                                while(true)
                                                {
                                                   if(_loc2_.length <= 0)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         addr367:
                                                         _loc12_ = 0;
                                                         if(!_loc14_)
                                                         {
                                                            addr371:
                                                            _loc13_ = this.§1m§;
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc13_,_loc12_));
                                                               break loop0;
                                                            }
                                                            addr389:
                                                            addr387:
                                                         }
                                                         if(_loc15_)
                                                         {
                                                            this.§1m§ = new Vector.<SpriteSheetBase>();
                                                         }
                                                         do
                                                         {
                                                            this.§]Z§ = true;
                                                         }
                                                         while(_loc14_ && _loc2_);
                                                         
                                                      }
                                                      return true;
                                                   }
                                                   _loc3_ = this.§3!Y§(_loc2_);
                                                   if(!(_loc14_ && _loc3_))
                                                   {
                                                      if(_loc3_.width * _loc3_.height == 0)
                                                      {
                                                         if(_loc15_ || this)
                                                         {
                                                            throw new Error("Found too large sprite sheet image!");
                                                         }
                                                      }
                                                   }
                                                   _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                                   _loc5_ = this.§=!W§(_loc2_,_loc4_);
                                                   if(!_loc14_)
                                                   {
                                                      if(_loc5_.length == 0)
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      _loc6_ = this.getTextureFromBitmapData(_loc4_);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(0);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!(_loc14_ && _loc3_))
                                                            {
                                                               _loc7_ = §§pop();
                                                               if(!(_loc15_ || _loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               addr238:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                               }
                                                               addr357:
                                                            }
                                                         }
                                                         loop2:
                                                         for(; §§pop() < _loc5_.length; §§goto(addr357))
                                                         {
                                                            _loc8_ = _loc5_[_loc7_];
                                                            _loc1_ = _loc8_.§]!b§;
                                                            if(_loc14_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(_loc1_.§^h§);
                                                            if(_loc15_ || this)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(!_loc14_)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc15_ || _loc1_)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        if(_loc15_ || _loc2_)
                                                                        {
                                                                           addr282:
                                                                           _loc10_ = §§pop();
                                                                           if(!(_loc15_ || _loc1_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr290:
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc10_);
                                                                              if(!(_loc14_ && _loc2_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= _loc9_)
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             addr347:
                                                                                             §§push(§§pop() + 1);
                                                                                             if(!(_loc14_ && this))
                                                                                             {
                                                                                                break loop3;
                                                                                             }
                                                                                          }
                                                                                          addr356:
                                                                                          _loc7_ = §§pop();
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    _loc11_ = _loc1_.§-!k§(_loc10_);
                                                                                    if(!(_loc14_ && _loc1_))
                                                                                    {
                                                                                       this.§^Z§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                                       if(_loc15_ || _loc2_)
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                             if(!(_loc14_ && _loc3_))
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          _loc10_ = §§pop();
                                                                                       }
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 addr340:
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr356);
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        §§goto(addr347);
                                                                     }
                                                                     §§goto(addr282);
                                                                  }
                                                                  §§goto(addr290);
                                                               }
                                                               §§goto(addr340);
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   break;
                                                }
                                                throw new Error("Found too large sprite sheet image!");
                                             }
                                             §§goto(addr367);
                                          }
                                       }
                                       §§goto(addr371);
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
                                    §§goto(addr389);
                                 }
                              }
                           }
                           §§goto(addr87);
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr73);
               }
            }
            §§goto(addr82);
         }
         §§goto(addr87);
      }
      
      private function §^Z§(param1:§#!7§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:Rectangle = null;
         var _loc7_:§ %§ = null;
         var _loc5_:§;K§ = this.§@J§[param1.mName];
         if(!_loc9_)
         {
            if(!_loc5_)
            {
               _loc6_ = param1.§4!E§.clone();
               _loc7_ = new § %§(param2,_loc6_,false);
               _loc5_ = new §;K§(_loc7_,param3,_loc6_,param1.§0!>§,param1.§+<§,param4);
               addr44:
               if(_loc8_)
               {
                  this.§@J§[param1.mName] = _loc5_;
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §'!<§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(null);
            if(!(_loc6_ && _loc2_))
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc6_ && this))
               {
                  addr42:
                  var texture:Texture = null;
                  if(_loc5_)
                  {
                     §§push(Starling.§>!f§);
                     if(!_loc6_)
                     {
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        addr63:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§-!h§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(!_loc6_)
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(!(_loc6_ && _loc2_))
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(_loc5_)
                                    {
                                       addr89:
                                       §§pop().§§slot[2] = this.§-!h§[bd];
                                       addr117:
                                       if(_loc5_)
                                       {
                                          addr108:
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
                                 §§goto(addr117);
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr89);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr63);
            }
         }
         §§goto(addr42);
      }
      
      public function §]&§(param1:String) : §;K§
      {
         return this.§@J§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§-!h§[param1];
         if(!(_loc4_ && this))
         {
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  §§goto(addr45);
               }
            }
            _loc3_ = Starling.§0!2§(param1,param2);
            if(!(_loc4_ && this))
            {
               this.§-!h§[param1] = _loc3_;
               do
               {
                  this.§<!7§(_loc3_,param1,true);
               }
               while(!(_loc5_ || param1));
               
            }
            return _loc3_;
         }
         addr45:
         return _loc3_;
      }
      
      public function §<!7§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         §§push(1);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc7_ && param2))
         {
            §§push(param3);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr323:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc8_ || param1)
                     {
                        §§push(-1);
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr333:
                           while(true)
                           {
                              _loc4_ = §§pop();
                           }
                        }
                        addr332:
                     }
                     while(true)
                     {
                     }
                     addr334:
                  }
                  addr271:
                  while(true)
                  {
                     §§push(Boolean(param2));
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr320);
      }
      
      public function §;?§() : Texture
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§<8§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     this.§<8§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
                     addr47:
                     §§push(this.§<8§);
                  }
               }
               §§goto(addr47);
            }
            return §§pop();
         }
         §§goto(addr47);
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§-!h§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(_loc6_ && _loc3_)
               {
                  break;
               }
               if(this.§-!h§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(_loc7_)
         {
            this.§<!7§(param1,_loc3_,false);
         }
         §§push(Boolean(_loc3_));
         loop1:
         while(true)
         {
            if(!§§pop())
            {
               continue;
            }
            if(!(_loc6_ && _loc2_))
            {
               _loc3_.dispose();
            }
            while(true)
            {
               continue loop1;
               addr122:
               §§pop();
               do
               {
                  param1.dispose();
               }
               while(!(_loc7_ || _loc2_));
               
               if(!_loc6_)
               {
                  return;
               }
            }
         }
      }
      
      public function §]!d§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§;K§ = this.§]&§(param1);
         if(_loc3_ || _loc2_)
         {
            if(_loc2_ == null)
            {
               if(!_loc4_)
               {
                  §§push(this.§]&§(param1 + "_1"));
                  if(!_loc4_)
                  {
                     _loc2_ = §§pop();
                     addr62:
                     if(_loc2_ == null)
                     {
                        if(!_loc4_)
                        {
                           addr72:
                           _loc2_ = this.§]&§(param1 + "_01");
                        }
                        §§goto(addr86);
                     }
                     if(_loc2_ == null)
                     {
                        if(_loc3_ || param1)
                        {
                           return null;
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr72);
               }
               addr86:
               return _loc2_.bitmapData;
            }
            §§goto(addr62);
         }
         §§goto(addr72);
      }
   }
}
