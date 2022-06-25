package §,!7§
{
   import §6!J§.§"!]§;
   import §6!J§.Texture;
   import §6w§.§<>§;
   import §6w§.SpriteSheetBase;
   import §7!>§.Starling;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class TextureManager extends EventDispatcher
   {
      
      private static const §4!f§:int = 2;
      
      private static const §0!R§:int = 2048;
      
      private static var §11§:TextureManager;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §4!f§ = 2;
         }
         do
         {
            §0!R§ = 2048;
         }
         while(!(_loc2_ || TextureManager));
         
      }
      
      private var §]!V§:Dictionary;
      
      private var § !`§:Vector.<SpriteSheetBase>;
      
      private var §%5§:Dictionary;
      
      private var §3U§:Boolean;
      
      private var §7!D§:String;
      
      private var §3!,§:Texture;
      
      private var §4M§:int;
      
      private var §,!=§:int;
      
      public function TextureManager(param1:String = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§ !`§ = new Vector.<SpriteSheetBase>();
               while(true)
               {
                  this.§]!V§ = new Dictionary();
                  continue loop0;
                  addr53:
                  while(!(_loc2_ && _loc3_))
                  {
                     this.§7!D§ = param1;
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           return;
                           addr47:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public static function get §7!E§() : TextureManager
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && TextureManager))
         {
            §§push(§11§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §11§ = new TextureManager();
                     addr51:
                     §§push(§11§);
                  }
               }
               §§goto(addr51);
            }
            return §§pop();
         }
         §§goto(addr51);
      }
      
      public function get §^!"§() : int
      {
         return this.§4M§;
      }
      
      public function get §9!d§() : int
      {
         return this.§,!=§;
      }
      
      public function get id() : String
      {
         return this.§7!D§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§ H§ = null;
         var _loc2_:SpriteSheetBase = null;
         if(!_loc5_)
         {
            if(this.§]!V§)
            {
               addr29:
               var _loc3_:int = 0;
               var _loc4_:* = this.§]!V§;
               loop15:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc6_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_ || _loc1_)
                        {
                           this.unregisterBitmapDataTexture(_loc1_.texture.parent);
                           if(_loc5_ && this)
                           {
                              continue;
                           }
                        }
                        _loc1_.dispose();
                        continue;
                     }
                     if(_loc6_)
                     {
                        if(!(_loc5_ && _loc1_))
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              this.§]!V§ = null;
                              if(!_loc5_)
                              {
                                 addr97:
                                 §§push(Boolean(this.§ !`§));
                                 if(_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          _loc3_ = 0;
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             addr124:
                                             _loc4_ = this.§ !`§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc4_,_loc3_));
                                                break loop15;
                                             }
                                             addr145:
                                          }
                                          if(!_loc5_)
                                          {
                                             this.§ !`§ = null;
                                             loop1:
                                             while(true)
                                             {
                                                addr232:
                                                while(true)
                                                {
                                                   §§push(Boolean(this.§%5§));
                                                   loop11:
                                                   while(!§§pop())
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(this.§3!,§);
                                                         if(_loc6_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!_loc6_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr226:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§3!,§);
                                                                     break loop10;
                                                                  }
                                                                  addr226:
                                                               }
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  this.§ !`§ = new Vector.<SpriteSheetBase>();
                                                                  loop7:
                                                                  while(_loc6_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        break loop11;
                                                                     }
                                                                     this.§]!V§ = new Dictionary();
                                                                     while(!_loc5_)
                                                                     {
                                                                        this.§%5§ = new Dictionary();
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        addr165:
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           addr230:
                                                                           while(true)
                                                                           {
                                                                              this.§3!,§ = null;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop6;
                                                                           §§goto(addr165);
                                                                        }
                                                                     }
                                                                     §§goto(addr226);
                                                                  }
                                                                  addr241:
                                                                  while(true)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().dispose();
                                                         §§goto(addr230);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      this.§%5§ = null;
                                                      §§goto(addr241);
                                                   }
                                                }
                                             }
                                             addr245:
                                          }
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr225);
                              }
                              §§goto(addr245);
                           }
                           §§goto(addr216);
                        }
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
                     if(_loc6_ || this)
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr124);
               }
            }
            §§goto(addr97);
         }
         §§goto(addr29);
      }
      
      public function §-M§(param1:SpriteSheetBase) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.§3U§)
            {
               while(true)
               {
                  if(this.§ !`§.indexOf(param1) < 0)
                  {
                     loop1:
                     while(true)
                     {
                        this.§ !`§.push(param1);
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           §§goto(addr86);
                        }
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  if(!(_loc2_ && this))
                  {
                     return;
                  }
               }
               return;
            }
            addr86:
            return;
         }
         §§goto(addr82);
      }
      
      private function §-_§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:SpriteSheetBase = null;
         var _loc10_:BitmapData = null;
         §§push(0);
         if(!(_loc11_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc12_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc12_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:* = Number(1);
         §§push(0);
         if(_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         loop0:
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(_loc12_)
            {
               if(_loc8_ == 0)
               {
                  if(!_loc11_)
                  {
                     §§push(_loc9_.scale);
                     if(!_loc11_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc12_)
                        {
                           _loc7_ = §§pop();
                           if(_loc11_)
                           {
                              addr100:
                              break;
                           }
                           addr95:
                        }
                        else
                        {
                           addr98:
                           if(§§pop() != _loc7_)
                           {
                              §§goto(addr100);
                           }
                        }
                        _loc10_ = _loc9_.bitmapData;
                        if(!_loc11_)
                        {
                           §§push(_loc2_);
                           loop1:
                           while(true)
                           {
                              if(§§pop() + _loc10_.width + §4!f§ >= §0!R§)
                              {
                                 while(true)
                                 {
                                    §§push(0);
                                    addr345:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       loop4:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr347:
                                          loop5:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(!_loc11_)
                                             {
                                                §§push(_loc6_);
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr314:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                }
                                                addr313:
                                             }
                                             addr315:
                                             while(_loc12_ || _loc2_)
                                             {
                                                _loc3_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr296:
                                                   while(true)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(int(§§pop()));
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         addr300:
                                                         if(!(_loc11_ && _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 addr344:
                              }
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop10:
                                 while(!_loc11_)
                                 {
                                    if(§§pop() + _loc10_.height + §4!f§ < §0!R§)
                                    {
                                       §§push(_loc2_);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(int(§§pop() + (_loc10_.width + §4!f§)));
                                          loop12:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             loop13:
                                             while(!_loc11_)
                                             {
                                                §§push(_loc2_);
                                                if(_loc12_ || this)
                                                {
                                                   §§push(_loc4_);
                                                   loop14:
                                                   while(!_loc11_)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            loop16:
                                                            while(!_loc11_)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  loop25:
                                                                  while(_loc12_ || param1)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        addr206:
                                                                        while(true)
                                                                        {
                                                                           if(_loc10_.height + §4!f§ > _loc6_)
                                                                           {
                                                                              if(!(_loc11_ && this))
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(int(_loc10_.height + §4!f§));
                                                                                    loop18:
                                                                                    for(; !_loc11_; while(true)
                                                                                    {
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§goto(addr183);
                                                                                                §§push(int(§§pop()));
                                                                                             }
                                                                                             §§goto(addr314);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop18;
                                                                                    },§§goto(addr296))
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       loop19:
                                                                                       while(_loc12_ || param1)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             continue loop18;
                                                                                          }
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc12_ || _loc3_)
                                                                                             {
                                                                                                if(!(_loc12_ || param1))
                                                                                                {
                                                                                                   break;
                                                                                                   addr108:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!(_loc11_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc11_ && _loc2_)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      if(_loc11_ && param1)
                                                                                                      {
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      §§push(§§pop() + 1);
                                                                                                      if(!(_loc11_ && param1))
                                                                                                      {
                                                                                                         addr139:
                                                                                                         if(!(_loc12_ || param1))
                                                                                                         {
                                                                                                            while(!(_loc11_ && param1))
                                                                                                            {
                                                                                                               _loc5_ = §§pop();
                                                                                                               continue loop23;
                                                                                                               §§goto(addr139);
                                                                                                            }
                                                                                                            continue loop16;
                                                                                                            addr183:
                                                                                                         }
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         §§push(int(§§pop()));
                                                                                                      }
                                                                                                      _loc8_ = §§pop();
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      if(true)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr160);
                                                                                                   }
                                                                                                   §§goto(addr139);
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                          §§goto(addr300);
                                                                                       }
                                                                                       break loop0;
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                                 §§goto(addr344);
                                                                                 §§goto(addr347);
                                                                              }
                                                                              §§goto(addr232);
                                                                           }
                                                                           §§goto(addr108);
                                                                           continue loop26;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr315);
                                                                  addr259:
                                                               }
                                                               §§goto(addr345);
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                   §§goto(addr313);
                                                }
                                                §§goto(addr259);
                                             }
                                             §§goto(addr333);
                                          }
                                       }
                                    }
                                    §§goto(addr281);
                                 }
                                 §§goto(addr299);
                              }
                           }
                        }
                        §§goto(addr333);
                     }
                  }
                  §§goto(addr95);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr98);
            }
            §§goto(addr95);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function § !6§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:SpriteSheetBase = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§9!<§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§<>§ = null;
         §§push(0);
         if(_loc15_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(!_loc14_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc15_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
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
               if(!(_loc15_ || _loc3_))
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(_loc15_ || param1)
               {
                  §§push(!isNaN(_loc7_));
                  if(_loc15_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc14_ && param1))
                     {
                        §§push(§§pop());
                        if(_loc15_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(!_loc14_)
                           {
                              addr107:
                              §§pop();
                              if(_loc15_ || param2)
                              {
                                 §§push(_loc7_);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop() == _loc8_.scale);
                                    if(!(_loc14_ && _loc3_))
                                    {
                                       addr128:
                                       §§push(!§§pop());
                                       if(_loc15_)
                                       {
                                          addr132:
                                          addr131:
                                          if(§§pop())
                                          {
                                             if(!_loc14_)
                                             {
                                                addr135:
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc8_.scale);
                                             if(!(_loc14_ && this))
                                             {
                                                addr145:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc7_ = §§pop();
                                          }
                                          _loc9_ = _loc8_.bitmapData;
                                          if(!(_loc14_ && param1))
                                          {
                                             §§push(_loc3_);
                                             if(!_loc14_)
                                             {
                                                if(§§pop() + _loc9_.width + §4!f§ > param2.width)
                                                {
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr278:
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         loop8:
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr280:
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
                                                                     while(true)
                                                                     {
                                                                        addr209:
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc14_)
                                                                           {
                                                                              if(!(_loc15_ || this))
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(!(_loc15_ || param1))
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           addr238:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc15_ || this))
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              if(_loc14_ && _loc3_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              addr252:
                                                                              _loc5_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop6;
                                                                                 §§goto(addr252);
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
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc15_ || param2)
                                                   {
                                                      if(§§pop() + _loc9_.height + §4!f§ > param2.height)
                                                      {
                                                         if(_loc15_ || this)
                                                         {
                                                            if(_loc15_ || param1)
                                                            {
                                                               break loop1;
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         else
                                                         {
                                                            addr205:
                                                            if(_loc15_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                      else
                                                      {
                                                         param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                      }
                                                      §§goto(addr205);
                                                   }
                                                   §§goto(addr238);
                                                   §§goto(addr253);
                                                }
                                                _loc10_ = new §9!<§();
                                                if(_loc15_)
                                                {
                                                   _loc10_.offset = new Point(_loc3_,_loc4_);
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      _loc10_.§<!0§ = _loc8_;
                                                      loop11:
                                                      while(true)
                                                      {
                                                         _loc6_.push(_loc10_);
                                                         if(!(_loc14_ && _loc3_))
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               continue;
                                                            }
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_.§5!^§);
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     _loc11_ = §§pop();
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(_loc14_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(int(§§pop()));
                                                                           if(!(_loc14_ && this))
                                                                           {
                                                                              _loc12_ = §§pop();
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 addr393:
                                                                                 addr450:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       break loop12;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr450:
                                                                                 _loc5_ = §§pop();
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    addr453:
                                                                                    param1.splice(0,1);
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              addr420:
                                                                              if(_loc9_.height + §4!f§ > _loc5_)
                                                                              {
                                                                                 if(!(_loc14_ && param2))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr453);
                                                                           }
                                                                           §§goto(addr450);
                                                                        }
                                                                        addr403:
                                                                        §§push(int(§§pop() + (_loc9_.width + §4!f§)));
                                                                        if(_loc15_ || param1)
                                                                        {
                                                                           addr417:
                                                                           _loc3_ = §§pop();
                                                                           if(!_loc15_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr420);
                                                                        }
                                                                        §§goto(addr450);
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr444:
                                                                  §§goto(addr450);
                                                                  §§push(int(_loc9_.height + §4!f§));
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop() >= _loc11_)
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                     break loop11;
                                                                  }
                                                                  §§goto(addr420);
                                                               }
                                                               else
                                                               {
                                                                  _loc13_ = _loc8_.§0B§(_loc12_);
                                                                  if(!_loc14_)
                                                                  {
                                                                     _loc13_.§!c§ = null;
                                                                  }
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        _loc13_.§'?§.offset(_loc3_,_loc4_);
                                                                        while(_loc15_)
                                                                        {
                                                                           §§push(_loc12_);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                           }
                                                                           _loc12_ = §§pop();
                                                                           if(_loc15_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break loop16;
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     §§goto(addr393);
                                                                  }
                                                               }
                                                               §§goto(addr393);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§push(_loc3_);
                                                      if(!_loc14_)
                                                      {
                                                         §§goto(addr403);
                                                      }
                                                      §§goto(addr417);
                                                      addr355:
                                                   }
                                                   §§goto(addr444);
                                                }
                                                §§goto(addr355);
                                             }
                                             §§goto(addr278);
                                          }
                                          §§goto(addr280);
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr107);
               }
               §§goto(addr135);
            }
            return _loc6_;
         }
      }
      
      public function §!4§() : Boolean
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc1_:SpriteSheetBase = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§9!<§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§<>§ = null;
         if(!_loc14_)
         {
            §§push(Starling.§!w§());
            if(!(_loc14_ && _loc1_))
            {
               §§push(!§§pop());
               if(_loc15_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc15_)
                     {
                        addr67:
                        §§push(false);
                        if(!(_loc14_ && _loc3_))
                        {
                           return §§pop();
                        }
                        addr92:
                        if(§§pop())
                        {
                           if(_loc15_)
                           {
                              §§goto(addr96);
                           }
                        }
                     }
                     var _loc2_:Array = [];
                     var _loc12_:int = 0;
                     var _loc13_:* = this.§ !`§;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc13_,_loc12_));
                        if(_loc15_ || _loc1_)
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc12_,_loc13_);
                              if(_loc15_ || _loc2_)
                              {
                                 if(_loc1_.§5!^§ <= 0)
                                 {
                                    continue;
                                 }
                                 if(!(_loc15_ || _loc1_))
                                 {
                                    continue;
                                 }
                              }
                              _loc2_.push(_loc1_);
                              continue;
                           }
                           if(!(_loc14_ && _loc1_))
                           {
                              if(_loc15_)
                              {
                                 if(!_loc14_)
                                 {
                                    while(_loc2_.length > 0)
                                    {
                                       _loc3_ = this.§-_§(_loc2_);
                                       if(!_loc14_)
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
                                       _loc5_ = this.§ !6§(_loc2_,_loc4_);
                                       if(!(_loc14_ && _loc2_))
                                       {
                                          if(_loc5_.length == 0)
                                          {
                                             if(!_loc14_)
                                             {
                                                throw new Error("Found too large sprite sheet image!");
                                             }
                                          }
                                       }
                                       _loc6_ = this.getTextureFromBitmapData(_loc4_);
                                       if(!_loc15_)
                                       {
                                          continue;
                                       }
                                       §§push(0);
                                       if(_loc15_ || _loc2_)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc15_)
                                          {
                                             addr245:
                                             _loc7_ = §§pop();
                                             if(_loc14_)
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                             }
                                             addr382:
                                          }
                                          loop2:
                                          for(; §§pop() < _loc5_.length; §§goto(addr382))
                                          {
                                             _loc8_ = _loc5_[_loc7_];
                                             _loc1_ = _loc8_.§<!0§;
                                             if(_loc15_ || _loc1_)
                                             {
                                                §§push(_loc1_.§5!^§);
                                                if(_loc15_ || _loc1_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc15_ || this)
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(_loc15_ || _loc3_)
                                                      {
                                                         §§push(0);
                                                         if(_loc15_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!(_loc14_ && _loc2_))
                                                            {
                                                               _loc10_ = §§pop();
                                                               if(_loc14_ && _loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               addr310:
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(!(_loc14_ && _loc2_))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= _loc9_)
                                                                        {
                                                                           if(!(_loc14_ && _loc3_))
                                                                           {
                                                                              addr369:
                                                                              §§push(_loc7_);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 addr381:
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() + 1);
                                                                              if(_loc15_ || this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              _loc7_ = §§pop();
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        _loc11_ = _loc1_.§0B§(_loc10_);
                                                                        if(!(_loc14_ && _loc3_))
                                                                        {
                                                                           this.§]!E§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                           if(!(_loc15_ || _loc1_))
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                        §§push(_loc10_);
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(!(_loc14_ && _loc2_))
                                                                           {
                                                                              addr350:
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           _loc10_ = §§pop();
                                                                           continue loop4;
                                                                        }
                                                                        §§goto(addr350);
                                                                        continue loop4;
                                                                     }
                                                                     addr360:
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr381);
                                                         §§push(int(§§pop()));
                                                      }
                                                      §§goto(addr369);
                                                   }
                                                   §§goto(addr360);
                                                }
                                                §§goto(addr381);
                                             }
                                             §§goto(addr310);
                                          }
                                          continue;
                                       }
                                       §§goto(addr245);
                                    }
                                    if(_loc15_)
                                    {
                                       _loc12_ = 0;
                                       if(!_loc14_)
                                       {
                                          _loc13_ = this.§ !`§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc13_,_loc12_));
                                             break loop0;
                                          }
                                          addr430:
                                          if(!(_loc14_ && _loc2_))
                                          {
                                             this.§ !`§ = new Vector.<SpriteSheetBase>();
                                             do
                                             {
                                                this.§3U§ = true;
                                             }
                                             while(!_loc15_);
                                             
                                             addr459:
                                          }
                                          addr429:
                                          addr419:
                                          addr417:
                                       }
                                       §§goto(addr430);
                                    }
                                    return true;
                                 }
                                 §§goto(addr459);
                              }
                              §§goto(addr430);
                           }
                           §§goto(addr429);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc1_ = §§nextvalue(_loc12_,_loc13_);
                           if(!(_loc14_ && this))
                           {
                              _loc1_.dispose();
                           }
                           continue;
                        }
                        §§goto(addr419);
                     }
                  }
                  else
                  {
                     §§push(this.§3U§);
                     if(_loc15_ || _loc2_)
                     {
                        §§goto(addr92);
                     }
                  }
               }
               addr96:
               return true;
            }
            §§goto(addr92);
         }
         §§goto(addr67);
      }
      
      private function §]!E§(param1:§<>§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§"!]§ = null;
         var _loc5_:§ H§ = this.§]!V§[param1.mName];
         if(_loc9_)
         {
            if(!_loc5_)
            {
               _loc6_ = param1.§'?§.clone();
               _loc7_ = new §"!]§(param2,_loc6_,false);
               _loc5_ = new § H§(_loc7_,param3,_loc6_,param1.§1l§,param1.§%!N§,param4);
               addr45:
               if(_loc9_)
               {
                  this.§]!V§[param1.mName] = _loc5_;
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §4!^§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc6_ && this))
         {
            §§push(null);
            if(!(_loc6_ && this))
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc6_ && _loc2_))
               {
                  addr47:
                  var texture:Texture = null;
                  if(!_loc6_)
                  {
                     §§push(Starling.§=!j§);
                     if(_loc5_ || _loc1_)
                     {
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        addr73:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§%5§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(!(_loc6_ && this))
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(_loc5_)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(_loc5_ || this)
                                    {
                                       §§pop().§§slot[2] = this.§%5§[bd];
                                       if(_loc5_)
                                       {
                                          addr124:
                                          texture.requestBaseTextureUpdate(bd as BitmapData);
                                       }
                                    }
                                    §§goto(addr124);
                                 }
                                 catch(e:Error)
                                 {
                                 }
                              }
                              continue;
                           }
                           §§goto(addr124);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr73);
            }
         }
         §§goto(addr47);
      }
      
      public function §]w§(param1:String) : § H§
      {
         return this.§]!V§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§%5§[param1];
         if(!(_loc4_ && _loc3_))
         {
            if(_loc3_)
            {
               if(_loc5_ || this)
               {
                  §§goto(addr50);
               }
            }
            _loc3_ = Starling.§,q§(param1,param2);
            if(!(_loc4_ && param2))
            {
               this.§%5§[param1] = _loc3_;
            }
            do
            {
               this.§6!?§(_loc3_,param1,true);
            }
            while(!(_loc5_ || this));
            
            return _loc3_;
         }
         addr50:
         return _loc3_;
      }
      
      public function §6!?§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         §§push(1);
         if(!(_loc7_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc8_)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(-1);
                        addr287:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr288:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr289:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr286:
                  }
                  while(true)
                  {
                     §§push(Boolean(param2));
                     loop7:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc8_ || param1)
                           {
                              §§push(this);
                              §§push(this.§,!=§);
                              §§push(_loc4_ * param2.width);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() * param2.height);
                                 if(!_loc7_)
                                 {
                                    addr271:
                                    §§push(§§pop() * 4);
                                 }
                                 §§pop().§,!=§ = §§pop() + §§pop();
                                 loop8:
                                 while(!(_loc7_ && param3))
                                 {
                                    while(true)
                                    {
                                       §§push(Boolean(param1));
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       if(_loc7_ && param2)
                                       {
                                          continue loop1;
                                       }
                                       if(!_loc8_)
                                       {
                                          continue loop0;
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                continue loop8;
                                             }
                                             if(!_loc7_)
                                             {
                                                §§push(param1.width);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   addr232:
                                                   while(!_loc7_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      continue loop11;
                                                   }
                                                   §§goto(addr288);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr286);
                                             }
                                             §§goto(addr287);
                                          }
                                       }
                                       §§goto(addr84);
                                    }
                                    continue loop7;
                                 }
                                 §§goto(addr289);
                                 addr275:
                              }
                              §§goto(addr271);
                           }
                           §§goto(addr275);
                        }
                        §§goto(addr210);
                     }
                  }
               }
            }
         }
         §§goto(addr235);
      }
      
      public function §&R§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§3!,§);
            if(_loc1_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     this.§3!,§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
                     addr71:
                     §§push(this.§3!,§);
                  }
               }
               §§goto(addr71);
            }
            return §§pop();
         }
         §§goto(addr71);
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§%5§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(!(_loc6_ || _loc3_))
               {
                  break;
               }
               if(this.§%5§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(!_loc7_)
         {
            this.§6!?§(param1,_loc3_,false);
            loop1:
            while(true)
            {
               §§push(Boolean(_loc3_));
               while(true)
               {
                  if(§§pop())
                  {
                     continue loop1;
                  }
                  addr92:
                  §§push(delete this.§%5§[_loc2_]);
                  if(!(_loc7_ && param1))
                  {
                     §§pop();
                     param1.dispose();
                     return;
                     addr115:
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      public function §?!d§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§ H§ = this.§]w§(param1);
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ == null)
            {
               if(_loc4_ || _loc2_)
               {
                  §§push(this.§]w§(param1 + "_1"));
                  if(_loc4_)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr68);
                  }
               }
               §§goto(addr83);
            }
            addr68:
            if(_loc2_ == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr83:
                  _loc2_ = this.§]w§(param1 + "_01");
               }
               §§goto(addr90);
            }
            if(_loc2_ == null)
            {
               if(_loc4_)
               {
                  §§goto(addr90);
               }
            }
            return _loc2_.bitmapData;
         }
         addr90:
         return null;
      }
   }
}
