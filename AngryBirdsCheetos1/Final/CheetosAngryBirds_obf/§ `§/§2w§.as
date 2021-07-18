package § `§
{
   import §@b§.§0!W§;
   import §@b§.§;%§;
   import §]!B§.§#!§;
   import §]!B§.Texture;
   import §`C§.§9!'§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §2w§ extends EventDispatcher
   {
      
      private static const §^`§:int = 2;
      
      private static const §%!;§:int = 2048;
      
      private static var §9o§:§2w§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §^`§ = 2;
         }
         do
         {
            §%!;§ = 2048;
         }
         while(!_loc2_);
         
      }
      
      private var §^!Z§:Dictionary;
      
      private var §%i§:Vector.<§;%§>;
      
      private var §;"§:Dictionary;
      
      private var §5!'§:Boolean;
      
      private var §;p§:String;
      
      private var §=C§:Texture;
      
      private var § !O§:int;
      
      private var §70§:int;
      
      public function §2w§(param1:String = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§%i§ = new Vector.<§;%§>();
               while(!_loc3_)
               {
                  this.§^!Z§ = new Dictionary();
                  do
                  {
                     this.§;"§ = new Dictionary();
                     do
                     {
                        this.§;p§ = param1;
                     }
                     while(!_loc2_);
                     
                  }
                  while(_loc3_);
                  
                  if(_loc2_ || _loc2_)
                  {
                     return;
                     addr53:
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public static function get §%!O§() : §2w§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§9o§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && §2w§))
                  {
                     §9o§ = new §2w§();
                     addr53:
                     §§push(§9o§);
                  }
               }
               §§goto(addr53);
            }
            return §§pop();
         }
         §§goto(addr53);
      }
      
      public function get §[!G§() : int
      {
         return this.§ !O§;
      }
      
      public function get §4p§() : int
      {
         return this.§70§;
      }
      
      public function get id() : String
      {
         return this.§;p§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§6!=§ = null;
         var _loc2_:§;%§ = null;
         if(_loc6_)
         {
            if(this.§^!Z§)
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§^!Z§;
               loop14:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_ || _loc1_)
                        {
                           this.§'!Y§(_loc1_.texture.parent);
                           if(_loc5_)
                           {
                              continue;
                           }
                        }
                        _loc1_.dispose();
                        continue;
                     }
                     if(_loc6_ || this)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           if(_loc6_ || _loc3_)
                           {
                              this.§^!Z§ = null;
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr94:
                                 if(this.§%i§)
                                 {
                                    if(!_loc5_)
                                    {
                                       addr109:
                                       _loc3_ = 0;
                                       if(_loc6_)
                                       {
                                          _loc4_ = this.§%i§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop14;
                                          }
                                          addr131:
                                          if(_loc6_ || _loc3_)
                                          {
                                             this.§%i§ = null;
                                             while(true)
                                             {
                                                addr199:
                                                while(true)
                                                {
                                                   if(this.§;"§)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§;"§ = null;
                                                            addr217:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr214:
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(this.§=C§);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(this.§=C§);
                                                               addr196:
                                                               while(true)
                                                               {
                                                                  §§pop().dispose();
                                                                  addr197:
                                                                  while(true)
                                                                  {
                                                                     this.§=C§ = null;
                                                                     addr178:
                                                                     addr180:
                                                                     while(!_loc6_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.§%i§ = new Vector.<§;%§>();
                                                            loop7:
                                                            while(true)
                                                            {
                                                               this.§^!Z§ = new Dictionary();
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr197);
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               §§goto(addr178);
                                                            }
                                                            §§goto(addr180);
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr214);
                                          addr130:
                                          addr128:
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr217);
                           }
                           §§goto(addr109);
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
                     if(!_loc5_)
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr131);
               }
            }
            §§goto(addr94);
         }
         §§goto(addr28);
      }
      
      public function §7!<§(param1:§;%§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§5!'§)
            {
               if(!(_loc2_ && this))
               {
                  return;
               }
               while(true)
               {
                  addr46:
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr53:
               }
               addr86:
            }
            while(true)
            {
               if(this.§%i§.indexOf(param1) >= 0)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
                  addr64:
                  while(true)
                  {
                  }
                  addr64:
               }
               while(true)
               {
                  this.§%i§.push(param1);
                  if(_loc3_ || _loc2_)
                  {
                     break;
                  }
                  §§goto(addr64);
               }
               §§goto(addr46);
               §§goto(addr86);
            }
            §§goto(addr53);
         }
         §§goto(addr64);
      }
      
      private function §5!#§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:§;%§ = null;
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
                  if(!_loc11_)
                  {
                     §§push(_loc9_.scale);
                     if(_loc12_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc11_ && _loc2_))
                        {
                           addr74:
                           _loc7_ = §§pop();
                           if(!_loc12_)
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
                              if(§§pop() + _loc10_.width + §^`§ >= §%!;§)
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
                                          while(!_loc11_)
                                          {
                                             §§push(_loc6_);
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr269:
                                                loop15:
                                                for(; _loc12_ || param1; §§push(_loc6_),if(!(_loc12_ || param1))
                                                {
                                                   continue;
                                                },§§push(§§pop() + §§pop()),if(!_loc11_)
                                                {
                                                   §§goto(addr118);
                                                   §§push(int(§§pop()));
                                                },§§goto(addr269))
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            if(_loc12_ || this)
                                                            {
                                                               if(!(_loc11_ && _loc2_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§push(int(§§pop()));
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              if(_loc12_ || _loc3_)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    addr131:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc10_.height + §^`§ > _loc6_)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(!(_loc11_ && param1))
                                                                                             {
                                                                                                §§push(int(_loc10_.height + §^`§));
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc11_ && param1)
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc12_ || this)
                                                                                                         {
                                                                                                            loop20:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               addr118:
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               addr120:
                                                                                                               if(_loc12_ || _loc2_)
                                                                                                               {
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  loop21:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr90:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc8_++;
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(_loc12_ || param1)
                                                                                                                  {
                                                                                                                     if(§§pop() + _loc10_.height + §^`§ >= §%!;§)
                                                                                                                     {
                                                                                                                        if(_loc12_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              break loop0;
                                                                                                                           }
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                        addr258:
                                                                                                                        addr258:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              §§push(_loc4_);
                                                                                                                              continue loop15;
                                                                                                                           }
                                                                                                                           continue loop23;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(int(§§pop() + (_loc10_.width + §^`§)));
                                                                                                                           break loop23;
                                                                                                                        }
                                                                                                                        addr251:
                                                                                                                     }
                                                                                                                     §§goto(addr120);
                                                                                                                  }
                                                                                                                  §§goto(addr270);
                                                                                                                  addr226:
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                      continue loop24;
                                                                                                      addr172:
                                                                                                   }
                                                                                                   §§goto(addr261);
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§goto(addr172);
                                                                                       }
                                                                                       §§goto(addr90);
                                                                                       continue loop24;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr251);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           §§goto(addr258);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr209:
                                                               }
                                                               §§goto(addr271);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   §§goto(addr131);
                                                }
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   addr270:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr271:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr261:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr262:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr226);
                                 §§goto(addr262);
                              }
                           }
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr77);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr80);
            }
            §§goto(addr82);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §>;§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:§;%§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§^R§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§0!W§ = null;
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
                  if(!_loc15_)
                  {
                     if(§§pop())
                     {
                        if(_loc14_)
                        {
                           addr70:
                           §§pop();
                           if(_loc14_ || this)
                           {
                              §§push(_loc7_);
                              if(_loc14_ || param2)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(_loc14_ || param1)
                                 {
                                    addr97:
                                    if(!§§pop())
                                    {
                                       if(!(_loc15_ && _loc3_))
                                       {
                                          break;
                                       }
                                       addr117:
                                       _loc9_ = _loc8_.bitmapData;
                                       if(!(_loc15_ && this))
                                       {
                                          §§push(_loc3_);
                                          loop2:
                                          while(true)
                                          {
                                             if(§§pop() + _loc9_.width + §^`§ <= param2.width)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc15_)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         if(§§pop() + _loc9_.height + §^`§ > param2.height)
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                         }
                                                         if(!(_loc14_ || this))
                                                         {
                                                            while(_loc15_)
                                                            {
                                                            }
                                                            continue;
                                                            addr203:
                                                         }
                                                         if(_loc14_)
                                                         {
                                                            if(false)
                                                            {
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr171:
                                                                  while(true)
                                                                  {
                                                                     if(_loc14_ || _loc3_)
                                                                     {
                                                                        addr178:
                                                                        if(_loc14_ || _loc3_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        addr208:
                                                                        while(true)
                                                                        {
                                                                           §§push(int(§§pop() + _loc5_));
                                                                           §§goto(addr178);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        addr212:
                                                                        addr224:
                                                                        while(_loc14_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           addr225:
                                                                           while(true)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               (_loc10_ = new §^R§()).offset = new Point(_loc3_,_loc4_);
                                                               if(_loc14_)
                                                               {
                                                                  _loc10_.§]L§ = _loc8_;
                                                                  if(_loc14_ || param2)
                                                                  {
                                                                     _loc6_.push(_loc10_);
                                                                     addr256:
                                                                     addr272:
                                                                     §§push(_loc8_.§]H§);
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        if(_loc14_)
                                                                        {
                                                                           _loc11_ = §§pop();
                                                                           if(_loc14_)
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 _loc12_ = §§pop();
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    if(_loc14_ || _loc3_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr256);
                                                                                       }
                                                                                       addr314:
                                                                                       §§push(_loc12_);
                                                                                       if(!(_loc15_ && this))
                                                                                       {
                                                                                          addr322:
                                                                                          if(§§pop() < _loc11_)
                                                                                          {
                                                                                             (_loc13_ = _loc8_.§+e§(_loc12_)).§-!C§ = null;
                                                                                             if(!(_loc15_ && param1))
                                                                                             {
                                                                                                _loc13_.§,-§.offset(_loc3_,_loc4_);
                                                                                                if(_loc14_ || this)
                                                                                                {
                                                                                                   _loc12_++;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr314);
                                                                                          }
                                                                                          if(_loc14_ || param1)
                                                                                          {
                                                                                             addr331:
                                                                                             §§push(_loc3_);
                                                                                             if(_loc14_ || this)
                                                                                             {
                                                                                                addr339:
                                                                                                §§push(int(§§pop() + (_loc9_.width + §^`§)));
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   addr347:
                                                                                                   _loc3_ = §§pop();
                                                                                                   if(_loc15_ && param2)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr355:
                                                                                                   if(_loc9_.height + §^`§ > _loc5_)
                                                                                                   {
                                                                                                      addr376:
                                                                                                      if(!(_loc15_ && param1))
                                                                                                      {
                                                                                                         addr368:
                                                                                                         §§push(int(_loc9_.height + §^`§));
                                                                                                      }
                                                                                                      param1.splice(0,1);
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§goto(addr376);
                                                                                                }
                                                                                                _loc5_ = §§pop();
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§goto(addr376);
                                                                                             }
                                                                                             §§goto(addr347);
                                                                                          }
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                       §§goto(addr347);
                                                                                    }
                                                                                    §§goto(addr272);
                                                                                 }
                                                                                 §§goto(addr376);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           §§goto(addr331);
                                                                        }
                                                                        §§goto(addr322);
                                                                     }
                                                                     §§goto(addr347);
                                                                  }
                                                               }
                                                               §§goto(addr368);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr208);
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                      §§goto(addr225);
                                                   }
                                                   §§goto(addr171);
                                                }
                                                break loop1;
                                             }
                                             §§goto(addr224);
                                          }
                                       }
                                       §§goto(addr214);
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(_loc14_ || this)
                                       {
                                          addr115:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc7_ = §§pop();
                                       §§goto(addr117);
                                    }
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr117);
                        }
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr70);
               }
               §§goto(addr117);
            }
            return _loc6_;
         }
      }
      
      public function §+!^§() : Boolean
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc1_:§;%§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§^R§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§0!W§ = null;
         if(!(_loc14_ && _loc3_))
         {
            §§push(§9!'§.§%C§());
            if(_loc15_)
            {
               if(!§§pop())
               {
                  if(_loc15_ || _loc2_)
                  {
                     §§push(false);
                     if(!_loc14_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr88:
                     var _loc2_:Array = [];
                     var _loc12_:int = 0;
                     var _loc13_:* = this.§%i§;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc13_,_loc12_));
                        if(_loc15_ || _loc1_)
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc12_,_loc13_);
                              if(_loc15_ || this)
                              {
                                 if(_loc1_.§]H§ <= 0)
                                 {
                                    continue;
                                 }
                                 if(_loc14_ && _loc1_)
                                 {
                                    continue;
                                 }
                              }
                              _loc2_.push(_loc1_);
                              continue;
                           }
                           if(!(_loc14_ && _loc3_))
                           {
                              if(_loc15_ || this)
                              {
                                 if(!_loc14_)
                                 {
                                    while(true)
                                    {
                                       if(_loc2_.length > 0)
                                       {
                                          _loc3_ = this.§5!#§(_loc2_);
                                          if(_loc14_ && this)
                                          {
                                             break;
                                          }
                                          if(_loc3_.width * _loc3_.height == 0)
                                          {
                                             if(_loc15_)
                                             {
                                                break;
                                             }
                                          }
                                          _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                          if((_loc5_ = this.§>;§(_loc2_,_loc4_)).length == 0)
                                          {
                                             if(!(_loc14_ && _loc2_))
                                             {
                                                throw new Error("Found too large sprite sheet image!");
                                             }
                                          }
                                          _loc6_ = this.§1u§(_loc4_);
                                          if(_loc15_ || _loc1_)
                                          {
                                             §§push(0);
                                             if(!_loc14_)
                                             {
                                                _loc7_ = §§pop();
                                                if(!_loc15_)
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                }
                                                addr312:
                                             }
                                             for(; §§pop() < _loc5_.length; §§goto(addr312))
                                             {
                                                _loc1_ = (_loc8_ = _loc5_[_loc7_]).§]L§;
                                                if(_loc15_)
                                                {
                                                   §§push(_loc1_.§]H§);
                                                   if(_loc15_ || this)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc15_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(_loc15_ || _loc2_)
                                                         {
                                                            addr271:
                                                            §§push(0);
                                                            if(_loc15_ || this)
                                                            {
                                                               addr279:
                                                               _loc10_ = §§pop();
                                                               if(!(_loc15_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            loop5:
                                                            while(§§pop() < _loc9_)
                                                            {
                                                               _loc11_ = _loc1_.§+e§(_loc10_);
                                                               if(_loc15_)
                                                               {
                                                                  this.§ B§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                  if(_loc15_)
                                                                  {
                                                                     _loc10_++;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop5;
                                                               }
                                                            }
                                                            if(!_loc14_)
                                                            {
                                                               _loc7_++;
                                                            }
                                                            continue;
                                                            addr307:
                                                         }
                                                         §§goto(addr306);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   §§goto(addr307);
                                                }
                                                §§goto(addr271);
                                             }
                                          }
                                          continue;
                                       }
                                       if(_loc15_ || _loc2_)
                                       {
                                          addr327:
                                          _loc12_ = 0;
                                          if(!(_loc14_ && _loc1_))
                                          {
                                             _loc13_ = this.§%i§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc13_,_loc12_));
                                                break loop0;
                                             }
                                             addr359:
                                             if(!(_loc14_ && _loc3_))
                                             {
                                                this.§%i§ = new Vector.<§;%§>();
                                                do
                                                {
                                                   this.§5!'§ = true;
                                                }
                                                while(_loc14_ && this);
                                                
                                                addr401:
                                             }
                                             return true;
                                             addr358:
                                             addr356:
                                          }
                                          §§goto(addr359);
                                       }
                                       §§goto(addr401);
                                    }
                                    throw new Error("Found too large sprite sheet image!");
                                 }
                                 §§goto(addr327);
                              }
                              §§goto(addr359);
                           }
                           §§goto(addr358);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc1_ = §§nextvalue(_loc12_,_loc13_);
                           if(_loc15_ || _loc2_)
                           {
                              _loc1_.dispose();
                           }
                           continue;
                        }
                        §§goto(addr359);
                     }
                  }
               }
               else
               {
                  §§push(this.§5!'§);
                  if(_loc15_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc14_ && _loc1_))
                        {
                           §§push(true);
                        }
                        else
                        {
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr88);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr88);
      }
      
      private function § B§(param1:§0!W§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§#!§ = null;
         var _loc5_:§6!=§;
         if(!(_loc5_ = this.§^!Z§[param1.mName]))
         {
            _loc6_ = param1.§,-§.clone();
            _loc7_ = new §#!§(param2,_loc6_,false);
            _loc5_ = new §6!=§(_loc7_,param3,_loc6_,param1.§?!Q§,param1.§+9§,param4);
            if(!(_loc8_ && param1))
            {
               this.§^!Z§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §6y§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§push(null);
            if(!(_loc6_ && this))
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc5_)
               {
                  addr37:
                  var texture:Texture = null;
                  if(_loc5_)
                  {
                     §§goto(addr41);
                  }
                  §§goto(addr44);
               }
               addr41:
               if(!§9!'§.§+!N§)
               {
                  addr44:
                  var _loc2_:int = 0;
                  var _loc3_:* = this.§;"§;
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     if(!_loc6_)
                     {
                        §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                        if(!(_loc6_ && this))
                        {
                           try
                           {
                              §§push(§§newactivation());
                              if(_loc5_)
                              {
                                 addr80:
                                 §§pop().§§slot[2] = this.§;"§[bd];
                                 addr101:
                                 if(!(_loc6_ && this))
                                 {
                                    addr94:
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
                           §§goto(addr101);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr80);
                  }
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      public function §4!,§(param1:String) : §6!=§
      {
         return this.§^!Z§[param1];
      }
      
      public function §1u§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§;"§[param1];
         if(!_loc4_)
         {
            if(_loc3_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr44);
               }
            }
            _loc3_ = §9!'§.§9!L§(param1,param2);
            if(_loc5_ || param1)
            {
               this.§;"§[param1] = _loc3_;
            }
            do
            {
               this.§@u§(_loc3_,param1,true);
            }
            while(!_loc5_);
            
            return _loc3_;
         }
         addr44:
         return _loc3_;
      }
      
      public function §@u§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:* = 1;
         if(!_loc7_)
         {
            if(!param3)
            {
               while(true)
               {
                  §§push(-1);
                  addr263:
                  addr198:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr264:
                     while(true)
                     {
                     }
                  }
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
                  addr67:
                  §§push(_loc5_);
                  if(_loc8_ || param2)
                  {
                     if(!(_loc7_ && param3))
                     {
                        addr84:
                        §§push(1);
                        if(!_loc7_)
                        {
                           addr87:
                           §§push(§§pop() >= §§pop());
                           if(§§pop() >= §§pop())
                           {
                              addr89:
                              §§pop();
                              addr90:
                              if(!(_loc7_ && param3))
                              {
                                 if(!_loc7_)
                                 {
                                    §§push(_loc6_);
                                    if(_loc8_)
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          §§push(1);
                                          if(_loc8_)
                                          {
                                             if(_loc8_)
                                             {
                                                §§push(§§pop() >= §§pop());
                                                if(!_loc7_)
                                                {
                                                   if(_loc8_ || param2)
                                                   {
                                                      addr52:
                                                      if(!§§pop())
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(_loc7_ && this)
                                                            {
                                                               §§push(_loc6_);
                                                               if(_loc8_)
                                                               {
                                                                  addr106:
                                                                  _loc6_ = §§pop() >> 1;
                                                                  §§goto(addr67);
                                                                  addr105:
                                                               }
                                                               §§goto(addr106);
                                                               addr113:
                                                            }
                                                            §§goto(addr63);
                                                         }
                                                         §§goto(addr90);
                                                      }
                                                      §§push(this);
                                                      §§push(this.§ !O§);
                                                      §§push(_loc4_ * _loc5_);
                                                      if(!(_loc7_ && param3))
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc8_ || param3)
                                                            {
                                                               addr152:
                                                               §§push(§§pop() * 4);
                                                            }
                                                            §§pop().§ !O§ = §§pop() + §§pop();
                                                            addr112:
                                                            _loc5_ >>= 1;
                                                            addr111:
                                                            §§goto(addr113);
                                                            addr155:
                                                         }
                                                      }
                                                      §§goto(addr152);
                                                   }
                                                   §§goto(addr87);
                                                }
                                                §§goto(addr89);
                                             }
                                             §§goto(addr111);
                                          }
                                          §§goto(addr84);
                                       }
                                       §§goto(addr111);
                                    }
                                    §§goto(addr67);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr52);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr106);
               }
            }
            while(true)
            {
               if(param2)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§70§);
                     §§push(_loc4_ * param2.width);
                     if(_loc8_ || this)
                     {
                        §§push(§§pop() * param2.height);
                        if(_loc8_)
                        {
                           addr245:
                           §§push(§§pop() * 4);
                        }
                        §§pop().§70§ = §§pop() + §§pop();
                        while(true)
                        {
                           §§goto(addr206);
                        }
                     }
                     §§goto(addr245);
                  }
               }
               addr206:
               while(param1)
               {
                  while(true)
                  {
                     §§push(param1.width);
                     loop7:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop8:
                        while(!_loc7_)
                        {
                           _loc5_ = §§pop();
                           while(true)
                           {
                              if(!(_loc7_ && param3))
                              {
                                 §§push(param1.height);
                                 if(!(_loc7_ && param3))
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc8_)
                                    {
                                       continue;
                                    }
                                    continue loop8;
                                 }
                                 continue loop7;
                              }
                              continue loop3;
                           }
                           continue loop4;
                        }
                        §§goto(addr263);
                     }
                     if(_loc8_ || param2)
                     {
                        continue loop4;
                     }
                  }
               }
               addr63:
               return;
               §§goto(addr264);
            }
         }
         §§goto(addr264);
      }
      
      public function §-!D§() : Texture
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§=C§);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     this.§=C§ = this.§1u§(new BitmapData(40,40,false,16711935));
                     addr46:
                  }
               }
               return this.§=C§;
            }
         }
         §§goto(addr46);
      }
      
      public function §'!Y§(param1:Texture) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§;"§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(_loc6_ && param1)
               {
                  break;
               }
               if(this.§;"§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(!_loc6_)
         {
            this.§@u§(param1,_loc3_,false);
            loop1:
            while(_loc3_)
            {
               if(_loc7_)
               {
                  if(!_loc7_)
                  {
                     continue;
                  }
                  _loc3_.dispose();
               }
               while(true)
               {
                  break loop1;
               }
               param1.dispose();
               return;
            }
            while(true)
            {
               delete this.§;"§[_loc2_];
               if(!_loc7_)
               {
                  continue;
               }
               §§goto(addr92);
            }
         }
         §§goto(addr100);
      }
      
      public function §=W§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§6!=§ = this.§4!,§(param1);
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ == null)
            {
               if(_loc4_)
               {
                  §§push(this.§4!,§(param1 + "_1"));
                  if(!_loc3_)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr53);
                  }
                  §§goto(addr68);
               }
               §§goto(addr85);
            }
            addr53:
            if(_loc2_ == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr68:
                  _loc2_ = this.§4!,§(param1 + "_01");
               }
               §§goto(addr85);
            }
            if(_loc2_ == null)
            {
               if(_loc4_)
               {
                  addr85:
                  return null;
               }
            }
            return _loc2_.bitmapData;
         }
         §§goto(addr68);
      }
   }
}
