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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §%u§ = 2;
         }
         do
         {
            §+!&§ = 2048;
         }
         while(!_loc1_);
         
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§1m§ = new Vector.<SpriteSheetBase>();
               addr82:
               while(true)
               {
                  this.§@J§ = new Dictionary();
                  addr70:
                  while(_loc2_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§-!h§ = new Dictionary();
            for(; !_loc3_; this.§<!B§ = param1,if(_loc2_)
            {
               return;
            })
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr82);
            }
            §§goto(addr70);
         }
      }
      
      public static function get §8!X§() : TextureManager
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§1E§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §1E§ = new TextureManager();
                     addr50:
                     §§push(§1E§);
                  }
               }
               §§goto(addr50);
            }
            return §§pop();
         }
         §§goto(addr50);
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§;K§ = null;
         var _loc2_:SpriteSheetBase = null;
         if(!_loc6_)
         {
            if(this.§@J§)
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§@J§;
               loop15:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc6_ && this))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc5_ || _loc3_)
                        {
                           this.unregisterBitmapDataTexture(_loc1_.texture.parent);
                           if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           }
                        }
                        _loc1_.dispose();
                        continue;
                     }
                     if(_loc5_)
                     {
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              this.§@J§ = null;
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr91:
                                 §§push(Boolean(this.§1m§));
                                 if(!(_loc6_ && this))
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          _loc3_ = 0;
                                          if(!_loc6_)
                                          {
                                             addr108:
                                             _loc4_ = this.§1m§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc4_,_loc3_));
                                                break loop15;
                                             }
                                             addr134:
                                          }
                                          if(!_loc6_)
                                          {
                                             this.§1m§ = null;
                                             loop1:
                                             while(true)
                                             {
                                                addr248:
                                                while(true)
                                                {
                                                   §§push(Boolean(this.§-!h§));
                                                   addr251:
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop14:
                                                         while(true)
                                                         {
                                                            this.§-!h§ = null;
                                                            addr255:
                                                            while(true)
                                                            {
                                                               continue loop14;
                                                            }
                                                         }
                                                         addr252:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§<8§);
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!(_loc5_ || _loc3_))
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  this.§1m§ = new Vector.<SpriteSheetBase>();
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§@J§ = new Dictionary();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           return;
                                                                           addr166:
                                                                           addr193:
                                                                        }
                                                                        addr218:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§<8§);
                                                                           addr230:
                                                                           while(true)
                                                                           {
                                                                              §§pop().dispose();
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ && _loc2_)
                                                                        {
                                                                           break loop7;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                                  addr198:
                                                                  while(true)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                         §§goto(addr230);
                                                      }
                                                   }
                                                }
                                             }
                                             addr259:
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr248);
                                 }
                                 §§goto(addr251);
                              }
                              §§goto(addr259);
                           }
                           §§goto(addr246);
                        }
                     }
                     §§goto(addr108);
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
                  §§goto(addr108);
               }
            }
            §§goto(addr91);
         }
         §§goto(addr28);
      }
      
      public function §,!j§(param1:SpriteSheetBase) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§]Z§)
            {
               if(!(_loc2_ && this))
               {
                  §§goto(addr81);
               }
               else
               {
                  while(true)
                  {
                     addr62:
                     if(_loc3_ || _loc2_)
                     {
                        return;
                     }
                  }
                  addr82:
               }
            }
            loop1:
            while(true)
            {
               if(this.§1m§.indexOf(param1) >= 0)
               {
                  if(_loc2_)
                  {
                     while(true)
                     {
                        break loop1;
                     }
                     return;
                     addr42:
                     addr70:
                  }
                  §§goto(addr62);
               }
               break;
               §§goto(addr82);
            }
            while(true)
            {
               this.§1m§.push(param1);
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr42);
            }
         }
         addr81:
      }
      
      private function §3!Y§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:SpriteSheetBase = null;
         var _loc10_:BitmapData = null;
         §§push(0);
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc11_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(!(_loc12_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:* = Number(1);
         §§push(0);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         loop0:
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(_loc11_)
            {
               if(_loc8_ == 0)
               {
                  if(!_loc12_)
                  {
                     addr79:
                     §§push(_loc9_.scale);
                     if(!(_loc12_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                        if(_loc11_ || param1)
                        {
                           addr96:
                           _loc7_ = §§pop();
                           if(_loc12_)
                           {
                              addr104:
                              break;
                           }
                        }
                        else
                        {
                           addr102:
                           if(§§pop() != _loc7_)
                           {
                              §§goto(addr104);
                           }
                        }
                        _loc10_ = _loc9_.bitmapData;
                        if(_loc11_ || _loc2_)
                        {
                           §§push(_loc2_);
                           loop1:
                           while(true)
                           {
                              if(§§pop() + _loc10_.width + §%u§ >= §+!&§)
                              {
                                 addr378:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr379:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr380:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          do
                                          {
                                             §§push(int(_loc3_ + _loc6_));
                                             do
                                             {
                                                _loc3_ = §§pop();
                                                §§push(0);
                                             }
                                             while(!(_loc11_ || this));
                                             
                                             _loc6_ = int(§§pop());
                                          }
                                          while(!(_loc11_ || _loc2_));
                                          
                                       }
                                    }
                                 }
                                 addr378:
                              }
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop3:
                                 while(!(_loc12_ && _loc2_))
                                 {
                                    if(§§pop() + _loc10_.height + §%u§ < §+!&§)
                                    {
                                       §§push(_loc2_);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(int(§§pop() + (_loc10_.width + §%u§)));
                                          while(_loc11_)
                                          {
                                             _loc2_ = §§pop();
                                             loop6:
                                             for(; _loc11_ || _loc3_; while(_loc11_ || this)
                                             {
                                                if(!_loc11_)
                                                {
                                                   addr312:
                                                   break loop0;
                                                }
                                                §§goto(addr241);
                                                §§push(int(_loc10_.height + §%u§));
                                             })
                                             {
                                                §§push(_loc2_);
                                                loop7:
                                                while(_loc11_)
                                                {
                                                   §§push(_loc4_);
                                                   loop8:
                                                   for(; !_loc12_; §§push(_loc6_),if(!(_loc11_ || param1))
                                                   {
                                                      continue;
                                                   },§§push(§§pop() + §§pop()),if(_loc11_ || _loc3_)
                                                   {
                                                      §§goto(addr210);
                                                      §§push(int(§§pop()));
                                                   },§§goto(addr365))
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            addr275:
                                                            while(_loc11_ || param1)
                                                            {
                                                               §§push(int(§§pop()));
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  loop12:
                                                                  while(!(_loc12_ && _loc3_))
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc10_.height + §%u§ > _loc6_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(!(_loc12_ && _loc2_))
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 addr210:
                                                                                 while(!_loc12_)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                 }
                                                                                 continue loop7;
                                                                                 addr210:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr160:
                                                                                 _loc8_ = §§pop();
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    if(!(_loc11_ || param1))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(true)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc11_ || _loc2_)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          addr241:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             if(!(_loc11_ || _loc2_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc11_ || _loc3_)
                                                                                             {
                                                                                                _loc6_ = §§pop();
                                                                                                continue loop9;
                                                                                             }
                                                                                             §§goto(addr380);
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§goto(addr210);
                                                                                    }
                                                                                    §§goto(addr365);
                                                                                 }
                                                                              }
                                                                              while(_loc11_)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        addr218:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr378);
                                                                     }
                                                                  }
                                                                  §§goto(addr343);
                                                               }
                                                            }
                                                            §§goto(addr334);
                                                         }
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   §§goto(addr365);
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr334);
                                          }
                                          §§goto(addr342);
                                       }
                                    }
                                    §§goto(addr312);
                                 }
                                 §§goto(addr379);
                              }
                           }
                        }
                        §§goto(addr378);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr104);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr102);
            }
            §§goto(addr79);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §=!W§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:SpriteSheetBase = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§+2§ = null;
         var _loc11_:int = 0;
         var _loc12_:* = 0;
         var _loc13_:§#!7§ = null;
         §§push(0);
         if(!(_loc14_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc15_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!_loc14_)
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
               if(!(_loc15_ || param2))
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(_loc15_)
               {
                  §§push(!isNaN(_loc7_));
                  if(!(_loc14_ && this))
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc14_)
                     {
                        §§push(§§pop());
                        if(_loc15_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(_loc15_)
                           {
                              addr107:
                              §§pop();
                              if(_loc15_)
                              {
                                 addr110:
                                 §§push(_loc7_);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() == _loc8_.scale);
                                    if(!(_loc14_ && this))
                                    {
                                       §§push(!§§pop());
                                       if(_loc15_ || _loc3_)
                                       {
                                          addr132:
                                          addr131:
                                          if(§§pop())
                                          {
                                             if(_loc15_)
                                             {
                                                addr135:
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc8_.scale);
                                             if(_loc15_ || this)
                                             {
                                                addr145:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc7_ = §§pop();
                                          }
                                          _loc9_ = _loc8_.bitmapData;
                                          if(!_loc14_)
                                          {
                                             §§push(_loc3_);
                                             loop2:
                                             while(true)
                                             {
                                                if(§§pop() + _loc9_.width + §%u§ <= param2.width)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc14_ && param1))
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            if(§§pop() + _loc9_.height + §%u§ > param2.height)
                                                            {
                                                               if(!_loc14_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                            }
                                                            if(!_loc15_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!(_loc14_ && param1))
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr257:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr258);
                                                                     }
                                                                  }
                                                               }
                                                               continue;
                                                               addr228:
                                                            }
                                                            if(_loc15_ || this)
                                                            {
                                                               if(false)
                                                               {
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     addr203:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          addr259:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             addr260:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                addr240:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr258:
                                                                                    }
                                                                                    _loc4_ = §§pop();
                                                                                    continue loop7;
                                                                                 }
                                                                              }
                                                                              continue loop2;
                                                                              addr208:
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        §§goto(addr240);
                                                                     }
                                                                  }
                                                                  addr201:
                                                               }
                                                               else
                                                               {
                                                                  _loc10_ = new §+2§();
                                                                  if(!_loc14_)
                                                                  {
                                                                     _loc10_.offset = new Point(_loc3_,_loc4_);
                                                                     if(!_loc14_)
                                                                     {
                                                                        _loc10_.§]!b§ = _loc8_;
                                                                        if(_loc15_ || param1)
                                                                        {
                                                                           _loc6_.push(_loc10_);
                                                                           if(_loc15_)
                                                                           {
                                                                              addr303:
                                                                              _loc11_ = _loc8_.§^h§;
                                                                              addr299:
                                                                              if(_loc15_ || param2)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc15_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc14_ && this))
                                                                                    {
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             _loc12_ = §§pop();
                                                                                             if(!(_loc14_ && param1))
                                                                                             {
                                                                                                addr297:
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr299);
                                                                                                }
                                                                                                addr388:
                                                                                                §§push(_loc12_);
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   if(§§pop() < _loc11_)
                                                                                                   {
                                                                                                      _loc13_ = _loc8_.§-!k§(_loc12_);
                                                                                                      if(_loc15_ || this)
                                                                                                      {
                                                                                                         _loc13_.§4!P§ = null;
                                                                                                         addr374:
                                                                                                         _loc13_.§4!E§.offset(_loc3_,_loc4_);
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            §§push(_loc12_);
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               §§push(§§pop() + 1);
                                                                                                               if(_loc15_ || param1)
                                                                                                               {
                                                                                                                  addr368:
                                                                                                                  §§push(int(§§pop()));
                                                                                                               }
                                                                                                               _loc12_ = §§pop();
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  addr372:
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr374);
                                                                                                                  }
                                                                                                                  §§goto(addr388);
                                                                                                               }
                                                                                                               §§goto(addr374);
                                                                                                            }
                                                                                                            §§goto(addr368);
                                                                                                         }
                                                                                                         addr387:
                                                                                                         §§goto(addr387);
                                                                                                      }
                                                                                                      §§goto(addr372);
                                                                                                   }
                                                                                                   if(!(_loc15_ || param1))
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr400:
                                                                                                   §§push(_loc3_);
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr417:
                                                                                                   _loc3_ = §§pop();
                                                                                                   if(!(_loc15_ || param1))
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   if(_loc9_.height + §%u§ > _loc5_)
                                                                                                   {
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         addr450:
                                                                                                         _loc5_ = int(_loc9_.height + §%u§);
                                                                                                         addr444:
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            addr453:
                                                                                                            param1.splice(0,1);
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr453);
                                                                                                }
                                                                                                §§goto(addr417);
                                                                                             }
                                                                                             §§goto(addr444);
                                                                                          }
                                                                                          §§push(int(§§pop() + (_loc9_.width + §%u§)));
                                                                                          if(_loc15_ || param2)
                                                                                          {
                                                                                             §§goto(addr417);
                                                                                          }
                                                                                          §§goto(addr450);
                                                                                       }
                                                                                       §§goto(addr299);
                                                                                    }
                                                                                    §§goto(addr303);
                                                                                 }
                                                                                 §§goto(addr417);
                                                                              }
                                                                              §§goto(addr453);
                                                                           }
                                                                           §§goto(addr450);
                                                                        }
                                                                     }
                                                                     §§goto(addr400);
                                                                  }
                                                                  §§goto(addr297);
                                                               }
                                                            }
                                                            §§goto(addr260);
                                                            while(true)
                                                            {
                                                               §§goto(addr201);
                                                            }
                                                         }
                                                         §§goto(addr203);
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                   break loop1;
                                                }
                                                §§goto(addr257);
                                             }
                                          }
                                          §§goto(addr260);
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr135);
                           }
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr107);
               }
               §§goto(addr110);
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
         if(_loc15_)
         {
            §§push(Starling.§84§());
            if(_loc15_)
            {
               §§push(!§§pop());
               if(!_loc14_)
               {
                  if(§§pop())
                  {
                     if(_loc15_)
                     {
                        §§push(false);
                        if(!(_loc14_ && _loc2_))
                        {
                           return §§pop();
                        }
                        addr77:
                        if(§§pop())
                        {
                           if(!_loc15_)
                           {
                              addr82:
                              var _loc2_:Array = [];
                              var _loc12_:int = 0;
                              var _loc13_:* = this.§1m§;
                              loop0:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc13_,_loc12_));
                                 if(!(_loc14_ && _loc1_))
                                 {
                                    if(§§pop())
                                    {
                                       _loc1_ = §§nextvalue(_loc12_,_loc13_);
                                       if(_loc15_ || _loc1_)
                                       {
                                          if(_loc1_.§^h§ <= 0)
                                          {
                                             continue;
                                          }
                                          if(_loc14_)
                                          {
                                             continue;
                                          }
                                       }
                                       _loc2_.push(_loc1_);
                                       continue;
                                    }
                                    if(!_loc14_)
                                    {
                                       if(!_loc14_)
                                       {
                                          if(_loc15_)
                                          {
                                             while(true)
                                             {
                                                if(_loc2_.length > 0)
                                                {
                                                   _loc3_ = this.§3!Y§(_loc2_);
                                                   if(!_loc14_)
                                                   {
                                                      if(_loc3_.width * _loc3_.height == 0)
                                                      {
                                                         if(!(_loc14_ && _loc3_))
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                                      _loc5_ = this.§=!W§(_loc2_,_loc4_);
                                                      if(_loc15_)
                                                      {
                                                         if(_loc5_.length == 0)
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               throw new Error("Found too large sprite sheet image!");
                                                               addr183:
                                                            }
                                                         }
                                                         _loc6_ = this.getTextureFromBitmapData(_loc4_);
                                                         if(_loc14_ && _loc1_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(0);
                                                         if(_loc15_ || _loc2_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!_loc14_)
                                                            {
                                                               addr220:
                                                               _loc7_ = §§pop();
                                                               if(!_loc15_)
                                                               {
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                               }
                                                               addr327:
                                                            }
                                                            loop2:
                                                            for(; §§pop() < _loc5_.length; §§goto(addr327))
                                                            {
                                                               _loc8_ = _loc5_[_loc7_];
                                                               _loc1_ = _loc8_.§]!b§;
                                                               if(_loc15_)
                                                               {
                                                                  §§push(_loc1_.§^h§);
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(_loc15_)
                                                                     {
                                                                        addr243:
                                                                        _loc9_ = §§pop();
                                                                        if(!(_loc14_ && _loc1_))
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc14_ && this))
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              if(!(_loc14_ && _loc1_))
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    loop4:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() >= _loc9_)
                                                                                             {
                                                                                                if(!(_loc14_ && _loc3_))
                                                                                                {
                                                                                                   addr314:
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc15_ || _loc1_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr326:
                                                                                                   _loc7_ = §§pop();
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                             _loc11_ = _loc1_.§-!k§(_loc10_);
                                                                                             if(_loc15_ || _loc1_)
                                                                                             {
                                                                                                this.§^Z§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                             }
                                                                                             §§push(_loc10_);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(§§pop() + 1);
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   addr300:
                                                                                                   §§push(int(§§pop()));
                                                                                                }
                                                                                                _loc10_ = §§pop();
                                                                                                continue loop4;
                                                                                             }
                                                                                             §§goto(addr300);
                                                                                             continue loop4;
                                                                                          }
                                                                                          addr305:
                                                                                       }
                                                                                       §§push(§§pop() + 1);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          addr325:
                                                                                          §§push(int(§§pop()));
                                                                                       }
                                                                                       §§goto(addr326);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr314);
                                                                              }
                                                                           }
                                                                           §§goto(addr325);
                                                                        }
                                                                        §§goto(addr314);
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                                  §§goto(addr243);
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                   break;
                                                }
                                                if(!_loc14_)
                                                {
                                                   _loc12_ = 0;
                                                   addr375:
                                                   if(!(_loc14_ && _loc2_))
                                                   {
                                                      _loc13_ = this.§1m§;
                                                      addr372:
                                                      §§push(§§hasnext(_loc13_,_loc12_));
                                                      break loop0;
                                                   }
                                                   if(_loc15_)
                                                   {
                                                      this.§1m§ = new Vector.<SpriteSheetBase>();
                                                      do
                                                      {
                                                         this.§]Z§ = true;
                                                      }
                                                      while(_loc14_);
                                                      
                                                   }
                                                }
                                             }
                                             throw new Error("Found too large sprite sheet image!");
                                          }
                                          return true;
                                       }
                                    }
                                    §§goto(addr375);
                                 }
                                 break;
                              }
                              while(§§pop())
                              {
                                 _loc1_ = §§nextvalue(_loc12_,_loc13_);
                                 if(_loc15_)
                                 {
                                    _loc1_.dispose();
                                 }
                                 §§goto(addr372);
                              }
                              §§goto(addr374);
                           }
                        }
                        §§goto(addr82);
                     }
                     return true;
                  }
                  else
                  {
                     §§push(this.§]Z§);
                     if(!_loc14_)
                     {
                        §§goto(addr77);
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr77);
         }
         §§goto(addr82);
      }
      
      private function §^Z§(param1:§#!7§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§ %§ = null;
         var _loc5_:§;K§ = this.§@J§[param1.mName];
         if(_loc9_ || param3)
         {
            if(!_loc5_)
            {
               addr50:
               _loc6_ = param1.§4!E§.clone();
               _loc7_ = new § %§(param2,_loc6_,false);
               _loc5_ = new §;K§(_loc7_,param3,_loc6_,param1.§0!>§,param1.§+<§,param4);
               if(!(_loc8_ && param1))
               {
                  this.§@J§[param1.mName] = _loc5_;
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §'!<§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && this))
         {
            §§push(null);
            if(_loc6_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc6_)
               {
                  addr38:
                  var texture:Texture = null;
                  if(_loc6_)
                  {
                     §§push(Starling.§>!f§);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        addr54:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§-!h§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(_loc6_)
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(_loc6_)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§pop().§§slot[2] = this.§-!h§[bd];
                                       if(_loc6_ || _loc2_)
                                       {
                                          addr115:
                                          texture.requestBaseTextureUpdate(bd as BitmapData);
                                       }
                                    }
                                    §§goto(addr115);
                                 }
                                 catch(e:Error)
                                 {
                                 }
                              }
                              continue;
                           }
                           §§goto(addr115);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr54);
            }
         }
         §§goto(addr38);
      }
      
      public function §]&§(param1:String) : §;K§
      {
         return this.§@J§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Texture = this.§-!h§[param1];
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
         _loc3_ = Starling.§0!2§(param1,param2);
         if(_loc4_ || _loc3_)
         {
            this.§-!h§[param1] = _loc3_;
         }
         do
         {
            this.§<!7§(_loc3_,param1,true);
         }
         while(_loc5_ && this);
         
         return _loc3_;
      }
      
      public function §<!7§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         §§push(1);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc8_ && param2))
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
                        if(_loc7_)
                        {
                           §§push(int(§§pop()));
                        }
                        addr272:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           addr273:
                           while(true)
                           {
                           }
                        }
                     }
                     addr268:
                  }
                  while(true)
                  {
                     §§push(Boolean(param2));
                     loop6:
                     while(!_loc8_)
                     {
                        if(§§pop())
                        {
                           loop7:
                           while(_loc7_)
                           {
                              §§push(this);
                              §§push(this.§2Y§);
                              §§push(_loc4_ * param2.width);
                              if(_loc7_)
                              {
                                 §§push(§§pop() * param2.height);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() * 4);
                                 }
                              }
                              §§pop().§2Y§ = §§pop() + §§pop();
                              loop8:
                              while(true)
                              {
                                 if(_loc7_ || this)
                                 {
                                    while(true)
                                    {
                                       addr204:
                                       while(true)
                                       {
                                          §§push(Boolean(param1));
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                          if(!_loc7_)
                                          {
                                             continue loop0;
                                          }
                                          if(§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§push(param1.width);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         break loop8;
                                                      }
                                                      _loc5_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§push(param1.height);
                                                            if(_loc7_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(!_loc8_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop12;
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr71);
                                       }
                                       continue loop6;
                                    }
                                    addr264:
                                 }
                                 else
                                 {
                                    §§goto(addr268);
                                 }
                              }
                              §§goto(addr272);
                           }
                           §§goto(addr273);
                        }
                        §§goto(addr204);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr264);
      }
      
      public function §;?§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§<8§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     this.§<8§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
                     addr51:
                     §§push(this.§<8§);
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
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§-!h§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(!(_loc6_ || _loc2_))
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
         if(_loc6_ || param1)
         {
            this.§<!7§(param1,_loc3_,false);
            while(true)
            {
               §§push(Boolean(_loc3_));
               loop2:
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  while(true)
                  {
                     _loc3_.dispose();
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public function §]!d§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§;K§ = this.§]&§(param1);
         if(!_loc4_)
         {
            if(_loc2_ == null)
            {
               if(_loc3_)
               {
                  §§push(this.§]&§(param1 + "_1"));
                  if(_loc3_)
                  {
                     _loc2_ = §§pop();
                     addr47:
                     if(_loc2_ == null)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr72:
                           _loc2_ = this.§]&§(param1 + "_01");
                           addr74:
                           if(_loc2_ == null)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 §§goto(addr84);
                              }
                           }
                           return _loc2_.bitmapData;
                           addr67:
                        }
                        addr84:
                        return null;
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr72);
               }
               §§goto(addr67);
            }
            §§goto(addr47);
         }
         §§goto(addr72);
      }
   }
}
