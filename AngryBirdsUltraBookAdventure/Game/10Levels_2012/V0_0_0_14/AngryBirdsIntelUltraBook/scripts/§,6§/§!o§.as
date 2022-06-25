package §,6§
{
   import §!!9§.§<!p§;
   import §!!9§.Texture;
   import §?2§.§=!L§;
   import §?2§.§]!'§;
   import §@4§.§,!]§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §!o§ extends EventDispatcher
   {
      
      private static const §`j§:int = 2;
      
      private static const § m§:int = 2048;
      
      private static var §;H§:§!o§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`j§ = 2;
         }
         do
         {
            § m§ = 2048;
         }
         while(_loc1_);
         
      }
      
      private var §?!Q§:Dictionary;
      
      private var §7X§:Vector.<§]!'§>;
      
      private var §-!;§:Dictionary;
      
      private var §+e§:Boolean;
      
      private var §49§:String;
      
      private var §]!3§:Texture;
      
      private var §]j§:int;
      
      private var §?!&§:int;
      
      public function §!o§(param1:String = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§7X§ = new Vector.<§]!'§>();
               while(!(_loc3_ && _loc3_))
               {
                  this.§-!;§ = new Dictionary();
                  loop3:
                  while(_loc2_ || _loc2_)
                  {
                     this.§49§ = param1;
                     if(_loc2_ || this)
                     {
                        addr44:
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              this.§?!Q§ = new Dictionary();
                              break loop3;
                              §§goto(addr44);
                           }
                           addr90:
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      public static function get §^Z§() : §!o§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §!o§)
         {
            §§push(§;H§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §;H§ = new §!o§();
                     addr44:
                     §§push(§;H§);
                  }
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         §§goto(addr44);
      }
      
      public function get §,G§() : int
      {
         return this.§]j§;
      }
      
      public function get §9$§() : int
      {
         return this.§?!&§;
      }
      
      public function get id() : String
      {
         return this.§49§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§5z§ = null;
         var _loc2_:§]!'§ = null;
         if(_loc6_ || _loc3_)
         {
            if(this.§?!Q§)
            {
               addr33:
               var _loc3_:int = 0;
               var _loc4_:* = this.§?!Q§;
               loop13:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc5_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_ || _loc2_)
                        {
                           this.unregisterBitmapDataTexture(_loc1_.texture.parent);
                           if(_loc6_ || this)
                           {
                              _loc1_.dispose();
                           }
                        }
                        continue;
                     }
                     if(_loc6_)
                     {
                        if(_loc6_ || _loc1_)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              this.§?!Q§ = null;
                              if(!(_loc5_ && _loc1_))
                              {
                                 addr104:
                                 if(this.§7X§)
                                 {
                                    if(!_loc5_)
                                    {
                                       addr119:
                                       _loc3_ = 0;
                                       if(_loc6_)
                                       {
                                          addr123:
                                          _loc4_ = this.§7X§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop13;
                                          }
                                          addr143:
                                       }
                                       if(!_loc5_)
                                       {
                                          this.§7X§ = null;
                                          loop10:
                                          while(true)
                                          {
                                             addr241:
                                             while(true)
                                             {
                                                if(this.§-!;§)
                                                {
                                                   addr244:
                                                   while(true)
                                                   {
                                                      this.§-!;§ = null;
                                                      addr247:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr244:
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§]!3§);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr210:
                                                         while(true)
                                                         {
                                                            §§push(this.§]!3§);
                                                            addr222:
                                                            while(true)
                                                            {
                                                               §§pop().dispose();
                                                               addr223:
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!(_loc5_ && _loc1_))
                                                                     {
                                                                        if(!(_loc6_ || _loc1_))
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        this.§]!3§ = null;
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr244);
                                                                     }
                                                                  }
                                                                  §§goto(addr247);
                                                               }
                                                            }
                                                         }
                                                         addr210:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§7X§ = new Vector.<§]!'§>();
                                                         loop5:
                                                         while(_loc6_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               this.§?!Q§ = new Dictionary();
                                                               while(_loc6_)
                                                               {
                                                                  this.§-!;§ = new Dictionary();
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     if(!(_loc5_ && _loc1_))
                                                                     {
                                                                        return;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr210);
                                                            }
                                                            §§goto(addr223);
                                                         }
                                                         §§goto(addr198);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   §§goto(addr222);
                                                }
                                             }
                                          }
                                          addr149:
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr210);
                        }
                     }
                     §§goto(addr123);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!(_loc5_ && this))
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr123);
               }
            }
            §§goto(addr104);
         }
         §§goto(addr33);
      }
      
      public function §4!c§(param1:§]!'§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!this.§+e§)
            {
               loop0:
               while(true)
               {
                  if(this.§7X§.indexOf(param1) >= 0)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        addr38:
                        while(true)
                        {
                           this.§7X§.push(param1);
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              return;
                           }
                           addr79:
                           return;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr38);
               }
               §§goto(addr74);
            }
            §§goto(addr79);
         }
         addr74:
      }
      
      private function §5t§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:§]!'§ = null;
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
                  if(!(_loc12_ && this))
                  {
                     §§push(_loc9_.scale);
                     if(!(_loc12_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(_loc11_ || this)
                        {
                           addr73:
                           _loc7_ = §§pop();
                           if(_loc12_ && param1)
                           {
                              addr86:
                              break;
                           }
                           addr81:
                        }
                        else
                        {
                           addr84:
                           if(§§pop() != _loc7_)
                           {
                              §§goto(addr86);
                           }
                        }
                        _loc10_ = _loc9_.bitmapData;
                        if(_loc11_)
                        {
                           §§push(_loc2_);
                           loop1:
                           while(true)
                           {
                              if(§§pop() + _loc10_.width + §`j§ >= § m§)
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
                                          while(_loc11_)
                                          {
                                             §§push(_loc6_);
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr308:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   addr309:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr310:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr290:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr291:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                loop16:
                                                while(!(_loc12_ && _loc3_))
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      loop17:
                                                      while(!_loc12_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc11_ || param1)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(int(§§pop()));
                                                         }
                                                         loop18:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            loop19:
                                                            while(true)
                                                            {
                                                               if(!(_loc12_ && this))
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_.height + §`j§ <= _loc6_)
                                                                     {
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           _loc8_++;
                                                                           if(!(_loc11_ || param1))
                                                                           {
                                                                              addr171:
                                                                              if(!_loc12_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           if(_loc11_ || param1)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc12_ && _loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc11_ || param1)
                                                                                       {
                                                                                          if(!(_loc12_ && this))
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr308);
                                                                                          }
                                                                                          §§goto(addr309);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          loop23:
                                                                                          while(_loc11_ || _loc2_)
                                                                                          {
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                addr195:
                                                                                                if(_loc11_ || this)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      while(!(_loc12_ && param1))
                                                                                                      {
                                                                                                         if(_loc12_ && _loc3_)
                                                                                                         {
                                                                                                            break loop20;
                                                                                                         }
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                      addr205:
                                                                                                   }
                                                                                                   §§goto(addr290);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() + _loc10_.height + §`j§ >= § m§)
                                                                                                   {
                                                                                                      if(!(_loc12_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc11_ || _loc3_)
                                                                                                         {
                                                                                                            break loop0;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      addr287:
                                                                                                      addr287:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         break loop21;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                   }
                                                                                                   §§goto(addr195);
                                                                                                }
                                                                                                §§goto(addr310);
                                                                                                addr257:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(int(§§pop() + (_loc10_.width + §`j§)));
                                                                                                break loop23;
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             §§goto(addr287);
                                                                                          }
                                                                                          addr186:
                                                                                       }
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                    continue loop18;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              addr181:
                                                                              addr181:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              §§goto(addr186);
                                                                           }
                                                                           §§goto(addr205);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           addr161:
                                                                           continue loop16;
                                                                           if(_loc12_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc11_)
                                                                           {
                                                                              break loop19;
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           §§goto(addr171);
                                                                        }
                                                                     }
                                                                     §§goto(addr181);
                                                                  }
                                                                  §§goto(addr291);
                                                               }
                                                               §§goto(addr287);
                                                            }
                                                            continue loop3;
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr174);
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
                                 §§goto(addr257);
                                 §§goto(addr291);
                              }
                           }
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr81);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr84);
            }
            §§goto(addr81);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §8!X§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:§]!'§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§,!G§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§=!L§ = null;
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
               if(_loc14_)
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(!(_loc14_ && this))
               {
                  §§push(!isNaN(_loc7_));
                  if(_loc15_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc15_ || _loc3_)
                        {
                           addr81:
                           §§pop();
                           if(_loc15_ || _loc3_)
                           {
                              §§push(_loc7_);
                              if(_loc15_ || param1)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(_loc15_)
                                 {
                                    addr103:
                                    if(!§§pop())
                                    {
                                       if(_loc15_)
                                       {
                                          addr106:
                                          break;
                                       }
                                       addr113:
                                       _loc9_ = _loc8_.bitmapData;
                                       if(_loc15_)
                                       {
                                          §§push(_loc3_);
                                          loop2:
                                          while(true)
                                          {
                                             if(§§pop() + _loc9_.width + §`j§ > param2.width)
                                             {
                                                addr200:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc14_)
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(int(§§pop() + _loc5_));
                                                         }
                                                         addr185:
                                                         while(true)
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            addr187:
                                                            _loc4_ = §§pop();
                                                            while(_loc14_)
                                                            {
                                                               continue loop5;
                                                               §§goto(addr187);
                                                            }
                                                            _loc5_ = 0;
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                addr200:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(!_loc14_)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      if(§§pop() + _loc9_.height + §`j§ > param2.height)
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
                                                      if(!_loc14_)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            if(_loc15_ || param1)
                                                            {
                                                               if(true)
                                                               {
                                                                  (_loc10_ = new §,!G§()).offset = new Point(_loc3_,_loc4_);
                                                                  if(_loc15_ || _loc3_)
                                                                  {
                                                                     _loc10_.§6!Q§ = _loc8_;
                                                                     if(!(_loc14_ && param2))
                                                                     {
                                                                        _loc6_.push(_loc10_);
                                                                        addr237:
                                                                        addr258:
                                                                        §§push(_loc8_.§%9§);
                                                                        if(_loc15_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           if(_loc15_ || _loc3_)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              addr251:
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    _loc12_ = §§pop();
                                                                                    if(!(_loc14_ && _loc3_))
                                                                                    {
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr237);
                                                                                          }
                                                                                          addr295:
                                                                                          §§push(_loc12_);
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             addr298:
                                                                                             if(§§pop() < _loc11_)
                                                                                             {
                                                                                                (_loc13_ = _loc8_.§%y§(_loc12_)).§^!d§ = null;
                                                                                                if(!(_loc14_ && param1))
                                                                                                {
                                                                                                   _loc13_.§43§.offset(_loc3_,_loc4_);
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      addr294:
                                                                                                      _loc12_++;
                                                                                                   }
                                                                                                   §§goto(addr295);
                                                                                                }
                                                                                                §§goto(addr294);
                                                                                             }
                                                                                             if(!(_loc14_ && _loc3_))
                                                                                             {
                                                                                                addr307:
                                                                                                §§push(_loc3_);
                                                                                                if(!(_loc14_ && param1))
                                                                                                {
                                                                                                   addr315:
                                                                                                   §§push(int(§§pop() + (_loc9_.width + §`j§)));
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      addr323:
                                                                                                      _loc3_ = §§pop();
                                                                                                      if(!(_loc14_ && param1))
                                                                                                      {
                                                                                                         addr331:
                                                                                                         if(_loc9_.height + §`j§ > _loc5_)
                                                                                                         {
                                                                                                            if(!(_loc15_ || param1))
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            §§push(int(_loc9_.height + §`j§));
                                                                                                         }
                                                                                                         addr367:
                                                                                                         param1.splice(0,1);
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§goto(addr367);
                                                                                                   }
                                                                                                   _loc5_ = §§pop();
                                                                                                   if(!(_loc15_ || param2))
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§goto(addr367);
                                                                                                }
                                                                                                §§goto(addr323);
                                                                                             }
                                                                                             §§goto(addr331);
                                                                                          }
                                                                                          §§goto(addr323);
                                                                                       }
                                                                                       §§goto(addr251);
                                                                                    }
                                                                                    §§goto(addr331);
                                                                                 }
                                                                                 §§goto(addr298);
                                                                              }
                                                                              §§goto(addr258);
                                                                           }
                                                                           §§goto(addr315);
                                                                        }
                                                                        §§goto(addr323);
                                                                     }
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr200);
                                                            }
                                                            §§goto(addr162);
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr164);
                                             }
                                             break loop1;
                                          }
                                       }
                                       §§goto(addr200);
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(_loc15_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr103);
                              }
                              _loc7_ = §§pop();
                              §§goto(addr113);
                           }
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr81);
               }
               §§goto(addr113);
            }
            return _loc6_;
         }
      }
      
      public function §"!A§() : Boolean
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc1_:§]!'§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§,!G§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§=!L§ = null;
         if(!_loc15_)
         {
            §§push(§,!]§.§1!8§());
            if(_loc14_)
            {
               if(!§§pop())
               {
                  if(_loc14_ || _loc1_)
                  {
                     §§push(false);
                     if(!_loc15_)
                     {
                        return §§pop();
                     }
                     addr67:
                     if(§§pop())
                     {
                        if(_loc14_ || _loc3_)
                        {
                           addr76:
                           return true;
                           addr75:
                        }
                     }
                     var _loc2_:Array = [];
                     var _loc12_:int = 0;
                     var _loc13_:* = this.§7X§;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc13_,_loc12_));
                        if(_loc14_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc12_,_loc13_);
                              if(!(_loc15_ && _loc2_))
                              {
                                 if(_loc1_.§%9§ > 0)
                                 {
                                    if(!(_loc15_ && _loc2_))
                                    {
                                       _loc2_.push(_loc1_);
                                    }
                                 }
                              }
                              continue;
                           }
                           if(!(_loc15_ && this))
                           {
                              if(!(_loc15_ && this))
                              {
                                 if(!(_loc15_ && this))
                                 {
                                    while(true)
                                    {
                                       if(_loc2_.length > 0)
                                       {
                                          _loc3_ = this.§5t§(_loc2_);
                                          if(_loc14_ || this)
                                          {
                                             if(_loc3_.width * _loc3_.height == 0)
                                             {
                                                if(_loc14_ || _loc1_)
                                                {
                                                   break;
                                                }
                                             }
                                             _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                             if((_loc5_ = this.§8!X§(_loc2_,_loc4_)).length == 0)
                                             {
                                                if(_loc14_ || _loc2_)
                                                {
                                                   throw new Error("Found too large sprite sheet image!");
                                                }
                                             }
                                             _loc6_ = this.getTextureFromBitmapData(_loc4_);
                                             if(_loc14_ || _loc3_)
                                             {
                                                §§push(0);
                                                if(_loc14_)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(_loc15_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   addr242:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                   }
                                                   addr316:
                                                }
                                                for(; §§pop() < _loc5_.length; §§goto(addr316))
                                                {
                                                   _loc1_ = (_loc8_ = _loc5_[_loc7_]).§6!Q§;
                                                   if(_loc14_)
                                                   {
                                                      §§push(_loc1_.§%9§);
                                                      if(!(_loc15_ && _loc2_))
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(_loc14_)
                                                         {
                                                            _loc9_ = §§pop();
                                                            if(!_loc14_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(0);
                                                            if(!(_loc15_ && _loc1_))
                                                            {
                                                               _loc10_ = §§pop();
                                                               if(!(_loc15_ && _loc1_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_);
                                                                  }
                                                                  addr310:
                                                               }
                                                               addr315:
                                                               _loc7_++;
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                      for(; §§pop() < _loc9_; §§goto(addr310))
                                                      {
                                                         _loc11_ = _loc1_.§%y§(_loc10_);
                                                         if(_loc14_)
                                                         {
                                                            this.§6!7§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                            if(!(_loc14_ || _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         _loc10_++;
                                                      }
                                                      if(!_loc14_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   §§goto(addr315);
                                                }
                                                continue;
                                             }
                                             §§goto(addr242);
                                          }
                                          break;
                                       }
                                       if(_loc14_)
                                       {
                                          _loc12_ = 0;
                                          addr348:
                                          if(_loc14_)
                                          {
                                             _loc13_ = this.§7X§;
                                             addr345:
                                             §§push(§§hasnext(_loc13_,_loc12_));
                                             break loop0;
                                          }
                                          if(!(_loc15_ && _loc3_))
                                          {
                                             this.§7X§ = new Vector.<§]!'§>();
                                          }
                                       }
                                    }
                                    throw new Error("Found too large sprite sheet image!");
                                 }
                                 do
                                 {
                                    this.§+e§ = true;
                                 }
                                 while(_loc15_ && _loc2_);
                                 
                                 return true;
                              }
                           }
                           §§goto(addr348);
                        }
                        break;
                     }
                     while(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc12_,_loc13_);
                        if(_loc14_)
                        {
                           _loc1_.dispose();
                        }
                        §§goto(addr345);
                     }
                     §§goto(addr347);
                  }
                  §§goto(addr75);
               }
               else
               {
                  §§push(this.§+e§);
                  if(_loc14_)
                  {
                     §§goto(addr67);
                  }
               }
               §§goto(addr76);
            }
            §§goto(addr67);
         }
         §§goto(addr76);
      }
      
      private function §6!7§(param1:§=!L§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§<!p§ = null;
         var _loc5_:§5z§;
         if(!(_loc5_ = this.§?!Q§[param1.mName]))
         {
            _loc6_ = param1.§43§.clone();
            _loc7_ = new §<!p§(param2,_loc6_,false);
            _loc5_ = new §5z§(_loc7_,param3,_loc6_,param1.§if §,param1.§2w§,param4);
            if(_loc9_)
            {
               this.§?!Q§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §#!Y§() : void
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
                  if(!_loc5_)
                  {
                     if(!§,!]§.§=!1§)
                     {
                        addr45:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§-!;§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(_loc6_ || this)
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(_loc6_ || this)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc5_)
                                    {
                                       §§pop().§§slot[2] = this.§-!;§[bd];
                                       if(_loc6_ || _loc3_)
                                       {
                                          addr111:
                                          texture.requestBaseTextureUpdate(bd as BitmapData);
                                       }
                                    }
                                    §§goto(addr111);
                                 }
                                 catch(e:Error)
                                 {
                                 }
                              }
                              continue;
                           }
                           §§goto(addr111);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr45);
            }
         }
         §§goto(addr38);
      }
      
      public function §`F§(param1:String) : §5z§
      {
         return this.§?!Q§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Texture = this.§-!;§[param1];
         if(!_loc5_)
         {
            if(_loc3_)
            {
               if(_loc4_)
               {
                  §§goto(addr38);
               }
            }
            _loc3_ = §,!]§.§[!K§(param1,param2);
            if(_loc4_ || _loc3_)
            {
               this.§-!;§[param1] = _loc3_;
            }
            do
            {
               this.§"!!§(_loc3_,param1,true);
            }
            while(!_loc4_);
            
            return _loc3_;
         }
         addr38:
         return _loc3_;
      }
      
      public function §"!!§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc4_:* = 1;
         if(_loc7_ || param1)
         {
            if(!param3)
            {
               addr246:
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
               }
               addr246:
            }
            loop0:
            while(true)
            {
               if(param2)
               {
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §§push(this);
                        §§push(this.§?!&§);
                        §§push(_loc4_ * param2.width);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * param2.height);
                           if(_loc7_)
                           {
                              §§push(§§pop() * 4);
                           }
                        }
                        §§pop().§?!&§ = §§pop() + §§pop();
                        while(true)
                        {
                        }
                        addr243:
                     }
                     else
                     {
                        §§goto(addr246);
                     }
                  }
                  §§goto(addr247);
                  addr223:
               }
               while(param1)
               {
                  if(!_loc8_)
                  {
                     if(_loc7_)
                     {
                        if(_loc8_ && param3)
                        {
                           continue loop0;
                        }
                        §§push(param1.width);
                        loop4:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr206:
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 _loc5_ = §§pop();
                                 continue loop4;
                              }
                              §§goto(addr247);
                           }
                        }
                     }
                     §§goto(addr243);
                  }
                  §§goto(addr219);
               }
               return;
            }
         }
         §§goto(addr246);
      }
      
      public function §80§() : Texture
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§]!3§);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     this.§]!3§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
                     addr71:
                     §§push(this.§]!3§);
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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§-!;§;
         do
         {
            for(_loc2_ in _loc5_)
            {
               if(_loc6_ && param1)
               {
                  break;
               }
            }
            return;
         }
         while(this.§-!;§[_loc2_] != param1);
         
         _loc3_ = _loc2_ as BitmapData;
         if(_loc7_)
         {
            this.§"!!§(param1,_loc3_,false);
            if(_loc3_)
            {
               while(true)
               {
                  _loc3_.dispose();
                  §§goto(addr111);
               }
               addr115:
            }
            while(true)
            {
               delete this.§-!;§[_loc2_];
               §§goto(addr115);
            }
         }
         addr111:
         while(true)
         {
            param1.dispose();
            if(_loc7_)
            {
               if(!_loc6_)
               {
                  break;
               }
               continue loop1;
            }
         }
      }
      
      public function §0!K§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§5z§ = this.§`F§(param1);
         if(_loc3_ || param1)
         {
            if(_loc2_ == null)
            {
               if(!_loc4_)
               {
                  §§push(this.§`F§(param1 + "_1"));
                  if(!_loc4_)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr52);
                  }
                  §§goto(addr77);
               }
               §§goto(addr89);
            }
            addr52:
            if(_loc2_ == null)
            {
               if(!(_loc4_ && this))
               {
                  addr77:
                  _loc2_ = this.§`F§(param1 + "_01");
               }
               §§goto(addr89);
            }
            if(_loc2_ == null)
            {
               if(!(_loc4_ && _loc2_))
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
