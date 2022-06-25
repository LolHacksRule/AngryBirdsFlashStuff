package §8!?§
{
   import §"$§.Starling;
   import §'_§.§=w§;
   import §'_§.Texture;
   import §3!c§.§33§;
   import §3!c§.SpriteSheetBase;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class TextureManager extends EventDispatcher
   {
      
      private static const §&!#§:int = 2;
      
      private static const §do §:int = 2048;
      
      private static var §;`§:TextureManager;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&!#§ = 2;
         }
         do
         {
            §do § = 2048;
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      private var §^k§:Dictionary;
      
      private var §9!V§:Vector.<SpriteSheetBase>;
      
      private var §<r§:Dictionary;
      
      private var §%!C§:Boolean;
      
      private var §^!,§:String;
      
      private var §^2§:Texture;
      
      private var §@X§:int;
      
      private var §^4§:int;
      
      public function TextureManager(param1:String = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§9!V§ = new Vector.<SpriteSheetBase>();
            do
            {
               this.§^k§ = new Dictionary();
               do
               {
                  this.§<r§ = new Dictionary();
                  continue loop0;
               }
               while(!(_loc3_ || _loc3_));
               
            }
            while(_loc2_);
            
            return;
         }
      }
      
      public static function get §&!'§() : TextureManager
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§;`§);
            if(_loc1_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §;`§ = new TextureManager();
                     addr50:
                     §§push(§;`§);
                  }
               }
               §§goto(addr50);
            }
            return §§pop();
         }
         §§goto(addr50);
      }
      
      public function get §3^§() : int
      {
         return this.§@X§;
      }
      
      public function get §+2§() : int
      {
         return this.§^4§;
      }
      
      public function get id() : String
      {
         return this.§^!,§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§?!B§ = null;
         var _loc2_:SpriteSheetBase = null;
         if(!_loc5_)
         {
            if(this.§^k§)
            {
               addr29:
               var _loc3_:int = 0;
               var _loc4_:* = this.§^k§;
               loop13:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!(_loc5_ && _loc1_))
                        {
                           this.unregisterBitmapDataTexture(_loc1_.texture.parent);
                           if(!(_loc5_ && _loc1_))
                           {
                              _loc1_.dispose();
                           }
                        }
                        continue;
                     }
                     if(_loc6_ || _loc3_)
                     {
                        if(_loc6_ || _loc1_)
                        {
                           if(!_loc5_)
                           {
                              this.§^k§ = null;
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr97:
                                 §§push(Boolean(this.§9!V§));
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          _loc3_ = 0;
                                          if(_loc6_)
                                          {
                                             addr129:
                                             _loc4_ = this.§9!V§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc4_,_loc3_));
                                                break loop13;
                                             }
                                             addr145:
                                          }
                                          if(!_loc5_)
                                          {
                                             this.§9!V§ = null;
                                             loop1:
                                             while(true)
                                             {
                                                addr235:
                                                while(true)
                                                {
                                                   §§push(Boolean(this.§<r§));
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop1;
                                                      }
                                                      addr203:
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(this.§^2§);
                                                         if(_loc6_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc5_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(!(_loc5_ && _loc2_))
                                                                  {
                                                                     §§push(this.§^2§);
                                                                     break loop8;
                                                                  }
                                                                  break loop9;
                                                                  addr212:
                                                               }
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  this.§9!V§ = new Vector.<SpriteSheetBase>();
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     this.§^k§ = new Dictionary();
                                                                     while(!_loc5_)
                                                                     {
                                                                        this.§<r§ = new Dictionary();
                                                                        if(_loc5_ && _loc2_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc5_ && _loc1_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              break loop3;
                                                                           }
                                                                           §§goto(addr212);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        addr202:
                                                                     }
                                                                     addr233:
                                                                     while(true)
                                                                     {
                                                                        this.§^2§ = null;
                                                                        §§goto(addr202);
                                                                     }
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§pop().dispose();
                                                      §§goto(addr233);
                                                   }
                                                   addr251:
                                                   while(true)
                                                   {
                                                      §§goto(addr203);
                                                   }
                                                }
                                             }
                                             addr255:
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr233);
                                    }
                                    §§goto(addr235);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr255);
                           }
                           §§goto(addr251);
                        }
                     }
                     §§goto(addr129);
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
                  §§goto(addr129);
               }
            }
            §§goto(addr97);
         }
         §§goto(addr29);
      }
      
      public function §2!M§(param1:SpriteSheetBase) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!this.§%!C§)
            {
               while(true)
               {
                  if(this.§9!V§.indexOf(param1) < 0)
                  {
                     do
                     {
                        this.§9!V§.push(param1);
                     }
                     while(_loc2_ && this);
                     
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(_loc3_ || _loc2_)
                  {
                     return;
                  }
               }
               return;
            }
            return;
         }
         §§goto(addr87);
      }
      
      private function §7!§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:SpriteSheetBase = null;
         var _loc10_:BitmapData = null;
         §§push(0);
         if(!(_loc11_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc12_ || _loc2_)
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
                  if(_loc12_)
                  {
                     addr80:
                     §§push(_loc9_.scale);
                     if(!_loc11_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc12_)
                        {
                           _loc7_ = §§pop();
                           if(_loc11_ && this)
                           {
                              addr100:
                              break;
                           }
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
                              if(§§pop() + _loc10_.width + §&!#§ >= §do §)
                              {
                                 addr354:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr355:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr356:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr357:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             addr327:
                                             while(true)
                                             {
                                                if(_loc11_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(_loc6_);
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr341:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      loop27:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         addr343:
                                                         while(true)
                                                         {
                                                            continue loop27;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr354:
                              }
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop3:
                                 while(true)
                                 {
                                    if(§§pop() + _loc10_.height + §&!#§ >= §do §)
                                    {
                                       if(!_loc11_)
                                       {
                                          break;
                                       }
                                       loop4:
                                       while(!_loc11_)
                                       {
                                          §§push(_loc2_);
                                          loop5:
                                          while(true)
                                          {
                                             if(!_loc12_)
                                             {
                                                while(_loc12_)
                                                {
                                                   §§goto(addr300);
                                                   §§push(int(§§pop() + (_loc10_.width + §&!#§)));
                                                }
                                                break;
                                                addr291:
                                             }
                                             if(!(_loc12_ || param1))
                                             {
                                                continue loop3;
                                             }
                                             §§push(_loc4_);
                                             loop6:
                                             for(; !_loc11_; §§push(_loc6_),if(!(_loc12_ || _loc2_))
                                             {
                                                continue;
                                             },§§push(§§pop() + §§pop()),if(_loc12_ || param1)
                                             {
                                                §§goto(addr197);
                                                §§push(int(§§pop()));
                                             },§§goto(addr341))
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc12_ || param1)
                                                      {
                                                         if(_loc12_ || _loc2_)
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         else
                                                         {
                                                            addr300:
                                                            while(true)
                                                            {
                                                               if(!_loc12_)
                                                               {
                                                                  break loop7;
                                                               }
                                                               _loc2_ = §§pop();
                                                               continue loop4;
                                                            }
                                                            addr300:
                                                         }
                                                      }
                                                      addr274:
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         addr275:
                                                         while(true)
                                                         {
                                                         }
                                                         addr132:
                                                         if(_loc12_ || param1)
                                                         {
                                                            continue loop5;
                                                         }
                                                      }
                                                      addr205:
                                                      if(_loc11_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc12_ || this))
                                                      {
                                                         continue loop4;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!(_loc11_ && this))
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(_loc12_ || _loc3_)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        §§goto(addr132);
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        addr198:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc11_ && _loc2_))
                                                                           {
                                                                              §§goto(addr205);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 addr162:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 §§goto(addr316);
                                                                              }
                                                                              addr242:
                                                                           }
                                                                        }
                                                                        §§goto(addr274);
                                                                     }
                                                                     addr197:
                                                                  }
                                                                  §§goto(addr132);
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               §§goto(addr242);
                                                            }
                                                            addr241:
                                                         }
                                                         §§goto(addr132);
                                                      }
                                                      §§goto(addr308);
                                                      addr108:
                                                   }
                                                   §§goto(addr356);
                                                }
                                                while(true)
                                                {
                                                   if(_loc10_.height + §&!#§ > _loc6_)
                                                   {
                                                      while(!(_loc11_ && param1))
                                                      {
                                                         §§goto(addr241);
                                                         §§push(int(_loc10_.height + §&!#§));
                                                      }
                                                      §§goto(addr357);
                                                      addr228:
                                                   }
                                                   §§goto(addr108);
                                                   §§goto(addr275);
                                                }
                                             }
                                             §§goto(addr340);
                                             §§goto(addr300);
                                          }
                                          §§goto(addr327);
                                       }
                                       §§goto(addr317);
                                    }
                                    else
                                    {
                                       §§push(_loc2_);
                                    }
                                    §§goto(addr291);
                                 }
                                 break loop0;
                              }
                           }
                        }
                        §§goto(addr354);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr100);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr98);
            }
            §§goto(addr80);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §7G§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:SpriteSheetBase = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§[!`§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§33§ = null;
         §§push(0);
         if(_loc14_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc14_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc14_)
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
               if(!_loc14_)
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(_loc14_)
               {
                  §§push(!isNaN(_loc7_));
                  if(_loc14_ || this)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc15_)
                     {
                        §§push(§§pop());
                        if(_loc14_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(!(_loc15_ && this))
                           {
                              §§pop();
                              if(_loc14_)
                              {
                                 §§push(_loc7_);
                                 if(_loc14_ || param2)
                                 {
                                    §§push(§§pop() == _loc8_.scale);
                                    if(!_loc15_)
                                    {
                                       §§push(!§§pop());
                                       if(!_loc15_)
                                       {
                                          addr111:
                                          addr110:
                                          if(§§pop())
                                          {
                                             if(!(_loc15_ && param1))
                                             {
                                                addr119:
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc8_.scale);
                                             if(_loc14_)
                                             {
                                                addr124:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc7_ = §§pop();
                                          }
                                          _loc9_ = _loc8_.bitmapData;
                                          if(!_loc15_)
                                          {
                                             §§push(_loc3_);
                                             loop2:
                                             while(true)
                                             {
                                                if(§§pop() + _loc9_.width + §&!#§ > param2.width)
                                                {
                                                   addr251:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         loop12:
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr254:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               addr217:
                                                               while(true)
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(int(§§pop() + _loc5_));
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc14_ || param1))
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        addr239:
                                                                        _loc4_ = §§pop();
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           addr199:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                              addr204:
                                                                              while(!(_loc14_ || param1))
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              if(_loc15_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              _loc5_ = §§pop();
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               continue loop12;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr251:
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc14_ || _loc3_)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         if(§§pop() + _loc9_.height + §&!#§ > param2.height)
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               if(_loc14_ || param1)
                                                               {
                                                                  if(_loc14_ || _loc3_)
                                                                  {
                                                                     if(_loc14_ || param2)
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     §§goto(addr251);
                                                                  }
                                                                  §§goto(addr240);
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                            else
                                                            {
                                                               addr190:
                                                               if(!(_loc15_ && param1))
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr199);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc10_ = new §[!`§();
                                                                     if(!_loc15_)
                                                                     {
                                                                        _loc10_.offset = new Point(_loc3_,_loc4_);
                                                                        if(_loc14_)
                                                                        {
                                                                           _loc10_.§<!K§ = _loc8_;
                                                                           _loc6_.push(_loc10_);
                                                                           addr325:
                                                                           if(_loc14_ || param1)
                                                                           {
                                                                              addr284:
                                                                              §§push(_loc8_.§@![§);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 if(!(_loc15_ && this))
                                                                                 {
                                                                                    addr297:
                                                                                    _loc11_ = §§pop();
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       if(!(_loc15_ && param2))
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             if(!(_loc15_ && param1))
                                                                                             {
                                                                                                _loc12_ = §§pop();
                                                                                                if(_loc15_ && param2)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr284);
                                                                                                }
                                                                                                addr382:
                                                                                                §§push(_loc12_);
                                                                                                if(_loc14_ || _loc3_)
                                                                                                {
                                                                                                   addr390:
                                                                                                   if(§§pop() < _loc11_)
                                                                                                   {
                                                                                                      _loc13_ = _loc8_.§'!1§(_loc12_);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         _loc13_.§6B§ = null;
                                                                                                      }
                                                                                                      addr368:
                                                                                                      _loc13_.§+!W§.offset(_loc3_,_loc4_);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         §§push(_loc12_);
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                            if(_loc14_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                         _loc12_ = §§pop();
                                                                                                         if(_loc14_ || _loc3_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr368);
                                                                                                            }
                                                                                                            §§goto(addr382);
                                                                                                         }
                                                                                                         §§goto(addr368);
                                                                                                      }
                                                                                                      addr381:
                                                                                                      §§goto(addr381);
                                                                                                   }
                                                                                                   if(_loc14_ || param2)
                                                                                                   {
                                                                                                      addr399:
                                                                                                      §§push(_loc3_);
                                                                                                      if(!(_loc15_ && this))
                                                                                                      {
                                                                                                         addr407:
                                                                                                         §§push(int(§§pop() + (_loc9_.width + §&!#§)));
                                                                                                         if(!(_loc15_ && this))
                                                                                                         {
                                                                                                            _loc3_ = §§pop();
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            if(_loc9_.height + §&!#§ > _loc5_)
                                                                                                            {
                                                                                                               addr462:
                                                                                                               if(!(_loc15_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(int(_loc9_.height + §&!#§));
                                                                                                               }
                                                                                                               param1.splice(0,1);
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            §§goto(addr462);
                                                                                                         }
                                                                                                      }
                                                                                                      _loc5_ = §§pop();
                                                                                                      if(!(_loc14_ || param1))
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr462);
                                                                                                }
                                                                                                §§goto(addr407);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr390);
                                                                                       }
                                                                                       §§goto(addr325);
                                                                                    }
                                                                                    §§goto(addr462);
                                                                                 }
                                                                                 §§goto(addr390);
                                                                              }
                                                                              §§goto(addr297);
                                                                           }
                                                                        }
                                                                        §§goto(addr399);
                                                                     }
                                                                     §§goto(addr325);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr254);
                                                         }
                                                         else
                                                         {
                                                            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr204);
                                                }
                                             }
                                          }
                                          §§goto(addr251);
                                       }
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr119);
                           }
                        }
                        §§goto(addr111);
                     }
                  }
                  §§goto(addr110);
               }
               §§goto(addr119);
            }
            return _loc6_;
         }
      }
      
      public function §-t§() : Boolean
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc1_:SpriteSheetBase = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§[!`§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§33§ = null;
         if(_loc14_)
         {
            §§push(Starling.§]c§());
            if(_loc14_ || _loc3_)
            {
               §§push(!§§pop());
               if(!(_loc15_ && this))
               {
                  addr63:
                  if(§§pop())
                  {
                     if(!(_loc15_ && _loc1_))
                     {
                        addr71:
                        §§push(false);
                        if(!_loc15_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr84:
                        return true;
                     }
                  }
                  else
                  {
                     §§push(this.§%!C§);
                     if(!_loc15_)
                     {
                        if(§§pop())
                        {
                           if(_loc14_)
                           {
                              §§goto(addr84);
                           }
                        }
                        var _loc2_:Array = [];
                        var _loc12_:int = 0;
                        var _loc13_:* = this.§9!V§;
                        loop0:
                        while(true)
                        {
                           §§push(§§hasnext(_loc13_,_loc12_));
                           if(_loc14_)
                           {
                              if(§§pop())
                              {
                                 _loc1_ = §§nextvalue(_loc12_,_loc13_);
                                 if(_loc14_ || _loc2_)
                                 {
                                    if(_loc1_.§@![§ > 0)
                                    {
                                       if(_loc14_ || this)
                                       {
                                          _loc2_.push(_loc1_);
                                       }
                                    }
                                 }
                                 continue;
                              }
                              if(!(_loc15_ && _loc2_))
                              {
                                 if(!(_loc15_ && _loc3_))
                                 {
                                    if(_loc14_ || _loc1_)
                                    {
                                       while(true)
                                       {
                                          if(_loc2_.length > 0)
                                          {
                                             _loc3_ = this.§7!§(_loc2_);
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
                                             _loc5_ = this.§7G§(_loc2_,_loc4_);
                                             if(!_loc15_)
                                             {
                                                if(_loc5_.length == 0)
                                                {
                                                   if(_loc14_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                _loc6_ = this.getTextureFromBitmapData(_loc4_);
                                                if(!_loc14_)
                                                {
                                                   continue;
                                                }
                                                §§push(0);
                                                if(!_loc15_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(!_loc15_)
                                                   {
                                                      addr224:
                                                      _loc7_ = §§pop();
                                                      if(!_loc14_)
                                                      {
                                                         continue;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                      }
                                                      addr336:
                                                   }
                                                   loop2:
                                                   for(; §§pop() < _loc5_.length; §§goto(addr336))
                                                   {
                                                      _loc8_ = _loc5_[_loc7_];
                                                      _loc1_ = _loc8_.§<!K§;
                                                      if(_loc14_)
                                                      {
                                                         §§push(_loc1_.§@![§);
                                                         if(!(_loc15_ && this))
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(_loc14_)
                                                            {
                                                               addr252:
                                                               _loc9_ = §§pop();
                                                               if(_loc15_ && _loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(0);
                                                               if(_loc14_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(_loc14_)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     if(_loc14_)
                                                                     {
                                                                        addr269:
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(_loc14_ || _loc2_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() >= _loc9_)
                                                                                 {
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       addr318:
                                                                                       §§push(_loc7_);
                                                                                       if(_loc15_ && _loc1_)
                                                                                       {
                                                                                          addr335:
                                                                                          break;
                                                                                          addr326:
                                                                                       }
                                                                                       §§push(§§pop() + 1);
                                                                                       if(_loc14_ || _loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       _loc7_ = §§pop();
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 _loc11_ = _loc1_.§'!1§(_loc10_);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    this.§3!H§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                                    if(_loc15_ && _loc3_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                 }
                                                                                 §§push(_loc10_);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    if(!(_loc15_ && _loc1_))
                                                                                    {
                                                                                       addr304:
                                                                                       §§push(int(§§pop()));
                                                                                    }
                                                                                    _loc10_ = §§pop();
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§goto(addr304);
                                                                                 continue loop4;
                                                                              }
                                                                              addr314:
                                                                           }
                                                                           §§goto(addr335);
                                                                        }
                                                                     }
                                                                     §§goto(addr318);
                                                                  }
                                                                  §§goto(addr326);
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                            §§goto(addr335);
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr224);
                                             }
                                             break;
                                          }
                                          if(_loc14_ || _loc3_)
                                          {
                                             addr351:
                                             _loc12_ = 0;
                                             if(!(_loc15_ && _loc3_))
                                             {
                                                _loc13_ = this.§9!V§;
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc13_,_loc12_));
                                                   break loop0;
                                                }
                                                addr394:
                                                if(!_loc15_)
                                                {
                                                   this.§9!V§ = new Vector.<SpriteSheetBase>();
                                                   addr397:
                                                }
                                                do
                                                {
                                                   this.§%!C§ = true;
                                                }
                                                while(_loc15_ && _loc1_);
                                                
                                                return true;
                                                addr393:
                                                addr383:
                                                addr381:
                                             }
                                             §§goto(addr394);
                                          }
                                          §§goto(addr397);
                                       }
                                       throw new Error("Found too large sprite sheet image!");
                                    }
                                    §§goto(addr351);
                                 }
                                 §§goto(addr394);
                              }
                              §§goto(addr393);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc12_,_loc13_);
                              if(!(_loc15_ && this))
                              {
                                 _loc1_.dispose();
                              }
                              continue;
                           }
                           §§goto(addr383);
                        }
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr63);
         }
         §§goto(addr71);
      }
      
      private function §3!H§(param1:§33§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§=w§ = null;
         var _loc5_:§?!B§ = this.§^k§[param1.mName];
         if(!(_loc8_ && param2))
         {
            if(!_loc5_)
            {
               _loc6_ = param1.§+!W§.clone();
               _loc7_ = new §=w§(param2,_loc6_,false);
               _loc5_ = new §?!B§(_loc7_,param3,_loc6_,param1.§@!h§,param1.§#O§,param4);
               addr50:
               if(!_loc8_)
               {
                  this.§^k§[param1.mName] = _loc5_;
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §-h§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || _loc1_)
         {
            §§push(null);
            if(_loc6_ || _loc2_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc6_)
               {
                  addr43:
                  var texture:Texture = null;
                  if(_loc6_ || _loc1_)
                  {
                     §§push(Starling.§6_§);
                     if(_loc6_ || _loc3_)
                     {
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        addr74:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§<r§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(!(_loc5_ && _loc2_))
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(_loc6_)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§pop().§§slot[2] = this.§<r§[bd];
                                       if(_loc5_ && _loc1_)
                                       {
                                       }
                                    }
                                    addr130:
                                    §§pop().§§slot[2].requestBaseTextureUpdate(bd as BitmapData);
                                 }
                                 catch(e:Error)
                                 {
                                    continue;
                                 }
                                 continue;
                              }
                              §§push(§§newactivation());
                           }
                           §§goto(addr130);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr74);
            }
         }
         §§goto(addr43);
      }
      
      public function §"!'§(param1:String) : §?!B§
      {
         return this.§^k§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Texture = this.§<r§[param1];
         if(_loc4_ || param1)
         {
            if(_loc3_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr49);
               }
            }
            _loc3_ = Starling.§7]§(param1,param2);
            if(_loc4_ || this)
            {
               this.§<r§[param1] = _loc3_;
               do
               {
                  this.§2!$§(_loc3_,param1,true);
               }
               while(!(_loc4_ || param2));
               
            }
            return _loc3_;
         }
         addr49:
         return _loc3_;
      }
      
      public function §2!$§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         §§push(1);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc8_ || this)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr298:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(-1);
                        if(_loc8_)
                        {
                           §§push(int(§§pop()));
                        }
                        addr303:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           addr304:
                           while(true)
                           {
                           }
                        }
                     }
                     addr299:
                  }
                  while(true)
                  {
                     §§push(Boolean(param2));
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr197);
      }
      
      public function §0G§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§^2§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this.§^2§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
                     addr46:
                     §§push(this.§^2§);
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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§<r§;
         while(true)
         {
            loop0:
            for(_loc2_ in _loc5_)
            {
               if(_loc7_ || param1)
               {
                  if(this.§<r§[_loc2_] != param1)
                  {
                     continue;
                  }
               }
               _loc3_ = _loc2_ as BitmapData;
               if(!_loc7_)
               {
                  if(false)
                  {
                     break;
                  }
                  continue;
               }
               this.§2!$§(param1,_loc3_,false);
               loop1:
               while(true)
               {
                  §§push(Boolean(_loc3_));
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(delete this.§<r§[_loc2_]);
                           if(_loc7_ || _loc2_)
                           {
                              §§pop();
                              break loop0;
                           }
                           continue loop2;
                        }
                        return;
                     }
                     addr90:
                     addr89:
                     continue loop1;
                  }
               }
            }
            return;
         }
         while(true)
         {
            param1.dispose();
            if(_loc6_)
            {
               §§goto(addr128);
            }
            §§goto(addr89);
         }
      }
      
      public function §"%§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§?!B§ = this.§"!'§(param1);
         if(_loc4_)
         {
            if(_loc2_ == null)
            {
               if(!_loc3_)
               {
                  addr39:
                  §§push(this.§"!'§(param1 + "_1"));
                  if(!_loc3_)
                  {
                     _loc2_ = §§pop();
                     addr58:
                     if(_loc2_ == null)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr73:
                           _loc2_ = this.§"!'§(param1 + "_01");
                           addr75:
                           if(_loc2_ == null)
                           {
                              if(!_loc3_)
                              {
                                 return null;
                              }
                           }
                           addr68:
                        }
                        return _loc2_.bitmapData;
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr73);
               }
               §§goto(addr68);
            }
            §§goto(addr58);
         }
         §§goto(addr39);
      }
   }
}
