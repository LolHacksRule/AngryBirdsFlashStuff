package §1n§
{
   import §-Z§.§?h§;
   import §[P§.Texture;
   import §[P§.§]!&§;
   import §`g§.§&_§;
   import §`g§.§]!3§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §5#§ extends EventDispatcher
   {
      
      private static const §+7§:int = 2;
      
      private static const §38§:int = 2048;
      
      private static var §-c§:§5#§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+7§ = 2;
            do
            {
               §38§ = 2048;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private var §8w§:Dictionary;
      
      private var §>U§:Vector.<§&_§>;
      
      private var § set§:Dictionary;
      
      private var §!!B§:Boolean;
      
      private var §#!<§:String;
      
      private var §5b§:Texture;
      
      private var §69§:int;
      
      private var §]!4§:int;
      
      public function §5#§(param1:String = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§>U§ = new Vector.<§&_§>();
               addr75:
               while(true)
               {
                  this.§8w§ = new Dictionary();
                  addr65:
                  while(!_loc3_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§ set§ = new Dictionary();
            for(; _loc2_; this.§#!<§ = param1,if(!_loc3_)
            {
               return;
            })
            {
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr75);
            }
            §§goto(addr65);
         }
      }
      
      public static function get §[8§() : §5#§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§-c§);
            if(!(_loc1_ && §5#§))
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §-c§ = new §5#§();
                     addr54:
                     §§push(§-c§);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         §§goto(addr54);
      }
      
      public function get §;!$§() : int
      {
         return this.§69§;
      }
      
      public function get §@!C§() : int
      {
         return this.§]!4§;
      }
      
      public function get id() : String
      {
         return this.§#!<§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§1D§ = null;
         var _loc2_:§&_§ = null;
         if(_loc5_ || _loc2_)
         {
            if(this.§8w§)
            {
               addr32:
               var _loc3_:int = 0;
               var _loc4_:* = this.§8w§;
               loop10:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc5_ || _loc3_)
                        {
                           this.§1l§(_loc1_.texture.parent);
                           if(!_loc6_)
                           {
                              _loc1_.dispose();
                           }
                        }
                        continue;
                     }
                     if(!(_loc6_ && this))
                     {
                        if(_loc5_ || this)
                        {
                           this.§8w§ = null;
                           addr94:
                           if(this.§>U§)
                           {
                              if(_loc5_)
                              {
                                 _loc3_ = 0;
                                 if(!_loc6_)
                                 {
                                    addr103:
                                    _loc4_ = this.§>U§;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       break loop10;
                                    }
                                    addr123:
                                 }
                                 this.§>U§ = null;
                                 loop1:
                                 while(true)
                                 {
                                    addr189:
                                    while(true)
                                    {
                                       if(this.§ set§)
                                       {
                                          while(true)
                                          {
                                             this.§ set§ = null;
                                             addr195:
                                             while(!_loc5_)
                                             {
                                                continue loop1;
                                             }
                                          }
                                          addr192:
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.§5b§);
                                          if(_loc5_)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§5b§);
                                                   addr186:
                                                   while(true)
                                                   {
                                                      §§pop().dispose();
                                                      this.§5b§ = null;
                                                   }
                                                }
                                                addr184:
                                             }
                                             while(true)
                                             {
                                                this.§>U§ = new Vector.<§&_§>();
                                                this.§8w§ = new Dictionary();
                                                do
                                                {
                                                   this.§ set§ = new Dictionary();
                                                }
                                                while(_loc6_);
                                                
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      return;
                                                   }
                                                   §§goto(addr192);
                                                }
                                                §§goto(addr195);
                                                continue loop9;
                                             }
                                          }
                                          §§goto(addr186);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr184);
                           }
                           §§goto(addr189);
                        }
                     }
                     §§goto(addr103);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc5_ || this)
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr103);
               }
            }
            §§goto(addr94);
         }
         §§goto(addr32);
      }
      
      public function §5§(param1:§&_§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(!this.§!!B§)
            {
               while(this.§>U§.indexOf(param1) < 0)
               {
                  loop1:
                  while(true)
                  {
                     this.§>U§.push(param1);
                     if(_loc3_)
                     {
                        break;
                     }
                     addr76:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  if(_loc3_ || this)
                  {
                     if(!_loc2_)
                     {
                        return;
                     }
                     addr80:
                     return;
                  }
               }
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr76);
      }
      
      private function §19§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:§&_§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = Number(1);
         var _loc8_:int = 0;
         loop0:
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(!_loc12_)
            {
               if(_loc8_ == 0)
               {
                  if(_loc11_)
                  {
                     addr51:
                     §§push(_loc9_.scale);
                     if(!(_loc12_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc12_)
                        {
                           _loc7_ = §§pop();
                           if(!(_loc11_ || _loc3_))
                           {
                              addr76:
                              break;
                           }
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
                        §§push(_loc2_);
                        loop1:
                        while(true)
                        {
                           if(§§pop() + _loc10_.width + §+7§ >= §38§)
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
                                       §§push(_loc6_);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop6:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             loop7:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop9:
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      addr188:
                                                      if(!(_loc11_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc11_ || _loc2_))
                                                      {
                                                         continue loop7;
                                                      }
                                                      _loc2_ = §§pop();
                                                      if(!(_loc11_ || this))
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§push(_loc2_);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               _loc4_ = _loc2_;
                                                               if(_loc12_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                            }
                                                            if(_loc10_.height + §+7§ > _loc6_)
                                                            {
                                                               if(!(_loc11_ || _loc2_))
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§push(int(_loc10_.height + §+7§));
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc11_ || _loc2_)
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(_loc12_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() + _loc10_.height + §+7§ >= §38§)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              §§push(_loc2_);
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              §§goto(addr188);
                                                                           }
                                                                           continue loop9;
                                                                           addr162:
                                                                        }
                                                                        §§push(_loc6_);
                                                                        if(!_loc11_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(!_loc11_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc12_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     if(_loc12_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     _loc5_ = §§pop();
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        addr82:
                                                                        while(true)
                                                                        {
                                                                           _loc8_++;
                                                                           if(_loc11_ || this)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                            §§goto(addr82);
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
                              §§goto(addr162);
                           }
                        }
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr76);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr74);
            }
            §§goto(addr51);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §3-§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:§&_§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§&>§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§]!3§ = null;
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
               if(!(_loc15_ || _loc3_))
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(_loc15_)
               {
                  §§push(!isNaN(_loc7_));
                  if(!_loc14_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc14_ && _loc3_))
                        {
                           §§pop();
                           if(!_loc14_)
                           {
                              §§push(_loc7_);
                              if(!_loc14_)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(_loc15_)
                                 {
                                    addr88:
                                    if(!§§pop())
                                    {
                                       if(_loc15_)
                                       {
                                          addr91:
                                          break;
                                       }
                                       addr103:
                                       _loc9_ = _loc8_.bitmapData;
                                       §§push(_loc3_);
                                       loop2:
                                       while(true)
                                       {
                                          if(§§pop() + _loc9_.width + §+7§ > param2.width)
                                          {
                                             while(true)
                                             {
                                                §§push(0);
                                                addr187:
                                                loop4:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   §§push(_loc4_);
                                                   if(_loc15_)
                                                   {
                                                      §§push(int(§§pop() + _loc5_));
                                                   }
                                                   loop5:
                                                   while(!_loc14_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      while(true)
                                                      {
                                                         addr153:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            addr155:
                                                            while(!_loc14_)
                                                            {
                                                               if(_loc14_ && _loc3_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               _loc5_ = §§pop();
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             addr186:
                                          }
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!_loc14_)
                                             {
                                                if(§§pop() + _loc9_.height + §+7§ > param2.height)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                }
                                                if(_loc14_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc14_)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr153);
                                                      }
                                                      else
                                                      {
                                                         (_loc10_ = new §&>§()).offset = new Point(_loc3_,_loc4_);
                                                         if(_loc15_ || _loc3_)
                                                         {
                                                            _loc10_.§`!6§ = _loc8_;
                                                            _loc6_.push(_loc10_);
                                                            if(_loc15_ || _loc3_)
                                                            {
                                                               addr212:
                                                               _loc11_ = _loc8_.§3t§;
                                                               if(!(_loc14_ && _loc3_))
                                                               {
                                                                  _loc12_ = 0;
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr212);
                                                                  }
                                                                  addr271:
                                                                  if(_loc12_ < _loc11_)
                                                                  {
                                                                     (_loc13_ = _loc8_.§7&§(_loc12_)).§!o§ = null;
                                                                     if(_loc15_ || this)
                                                                     {
                                                                        _loc13_.§<-§.offset(_loc3_,_loc4_);
                                                                        if(!(_loc14_ && param1))
                                                                        {
                                                                           addr270:
                                                                           _loc12_++;
                                                                        }
                                                                        §§goto(addr271);
                                                                     }
                                                                     §§goto(addr270);
                                                                  }
                                                               }
                                                               addr294:
                                                               if(_loc9_.height + §+7§ > _loc5_)
                                                               {
                                                                  _loc5_ = int(_loc9_.height + §+7§);
                                                               }
                                                               continue loop0;
                                                            }
                                                            _loc3_ += _loc9_.width + §+7§;
                                                            if(!_loc15_)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                         §§goto(addr294);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr186);
                                                   }
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr176);
                                             }
                                             §§goto(addr155);
                                          }
                                          break loop1;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(!(_loc14_ && param1))
                                       {
                                          addr101:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc7_ = §§pop();
                                       §§goto(addr103);
                                    }
                                    §§goto(addr103);
                                 }
                                 §§goto(addr88);
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr103);
                        }
                     }
                  }
                  §§goto(addr88);
               }
               §§goto(addr91);
            }
            return _loc6_;
         }
      }
      
      public function §&!%§() : Boolean
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc1_:§&_§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§&>§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§]!3§ = null;
         if(_loc14_)
         {
            §§push(§?h§.§6t§());
            if(!_loc15_)
            {
               if(!§§pop())
               {
                  if(_loc14_ || _loc2_)
                  {
                     §§push(false);
                     if(_loc14_ || _loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr85:
                     return true;
                  }
               }
               else
               {
                  addr73:
                  §§push(this.§!!B§);
                  if(!_loc15_)
                  {
                     if(§§pop())
                     {
                        if(_loc14_ || this)
                        {
                           §§goto(addr85);
                        }
                     }
                     var _loc2_:Array = [];
                     var _loc12_:int = 0;
                     var _loc13_:* = this.§>U§;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc13_,_loc12_));
                        if(_loc14_)
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc12_,_loc13_);
                              if(!(_loc15_ && _loc1_))
                              {
                                 if(_loc1_.§3t§ > 0)
                                 {
                                    if(_loc14_ || this)
                                    {
                                       _loc2_.push(_loc1_);
                                    }
                                 }
                              }
                              continue;
                           }
                           if(!_loc15_)
                           {
                              if(!(_loc15_ && _loc2_))
                              {
                                 if(_loc14_ || _loc3_)
                                 {
                                    while(_loc2_.length > 0)
                                    {
                                       _loc3_ = this.§19§(_loc2_);
                                       _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                       if((_loc5_ = this.§3-§(_loc2_,_loc4_)).length == 0)
                                       {
                                          if(!(_loc15_ && _loc1_))
                                          {
                                             throw new Error("Found too large sprite sheet image!");
                                          }
                                       }
                                       _loc6_ = this.§]C§(_loc4_);
                                       if(!_loc15_)
                                       {
                                          §§push(0);
                                          if(_loc14_)
                                          {
                                             _loc7_ = §§pop();
                                             if(!_loc14_)
                                             {
                                                continue;
                                             }
                                             addr207:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                             }
                                             addr286:
                                          }
                                          loop2:
                                          for(; §§pop() < _loc5_.length; §§goto(addr286))
                                          {
                                             _loc1_ = (_loc8_ = _loc5_[_loc7_]).§`!6§;
                                             if(_loc14_)
                                             {
                                                §§push(_loc1_.§3t§);
                                                if(!(_loc15_ && _loc2_))
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc14_)
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(_loc14_ || this)
                                                      {
                                                         §§push(0);
                                                         if(!(_loc15_ && _loc1_))
                                                         {
                                                            addr248:
                                                            _loc10_ = §§pop();
                                                            if(!_loc15_)
                                                            {
                                                               addr251:
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(_loc10_);
                                                                  addr276:
                                                                  while(§§pop() < _loc9_)
                                                                  {
                                                                     _loc11_ = _loc1_.§7&§(_loc10_);
                                                                     if(!(_loc15_ && _loc3_))
                                                                     {
                                                                        this.§45§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                        if(_loc15_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                     _loc10_++;
                                                                     continue loop4;
                                                                  }
                                                                  if(!(_loc14_ || _loc3_))
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                               }
                                                            }
                                                            _loc7_++;
                                                            continue;
                                                         }
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   §§goto(addr276);
                                                }
                                                §§goto(addr248);
                                             }
                                             §§goto(addr251);
                                          }
                                          continue;
                                       }
                                       §§goto(addr207);
                                    }
                                    if(_loc14_ || _loc2_)
                                    {
                                       _loc12_ = 0;
                                       if(_loc14_)
                                       {
                                          _loc13_ = this.§>U§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc13_,_loc12_));
                                             break loop0;
                                          }
                                          addr323:
                                          if(!(_loc15_ && _loc3_))
                                          {
                                             this.§>U§ = new Vector.<§&_§>();
                                             addr341:
                                          }
                                          do
                                          {
                                             this.§!!B§ = true;
                                          }
                                          while(!(_loc14_ || this));
                                          
                                          return true;
                                          addr322:
                                          addr320:
                                       }
                                       §§goto(addr323);
                                    }
                                 }
                                 §§goto(addr341);
                              }
                              §§goto(addr323);
                           }
                           §§goto(addr322);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc1_ = §§nextvalue(_loc12_,_loc13_);
                           if(!_loc15_)
                           {
                              _loc1_.dispose();
                           }
                           continue;
                        }
                        §§goto(addr323);
                     }
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr73);
      }
      
      private function §45§(param1:§]!3§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§]!&§ = null;
         var _loc5_:§1D§;
         if(!(_loc5_ = this.§8w§[param1.mName]))
         {
            _loc6_ = param1.§<-§.clone();
            _loc7_ = new §]!&§(param2,_loc6_,false);
            _loc5_ = new §1D§(_loc7_,param3,_loc6_,param1.§3e§,param1.§>9§,param4);
            if(!(_loc8_ && param2))
            {
               this.§8w§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §^2§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§push(null);
            if(_loc6_ || _loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc5_ && _loc3_))
               {
                  addr43:
                  var texture:Texture = null;
                  if(!(_loc5_ && _loc2_))
                  {
                     §§goto(addr52);
                  }
                  §§goto(addr55);
               }
               addr52:
               if(!§?h§.§6!#§)
               {
                  addr55:
                  var _loc2_:int = 0;
                  var _loc3_:* = this.§ set§;
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     if(_loc6_ || _loc1_)
                     {
                        §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                        if(_loc6_ || this)
                        {
                           try
                           {
                              §§push(§§newactivation());
                              if(!_loc5_)
                              {
                                 §§pop().§§slot[2] = this.§ set§[bd];
                                 if(_loc5_ && _loc3_)
                                 {
                                 }
                              }
                              addr121:
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
                     §§goto(addr121);
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §,Y§(param1:String) : §1D§
      {
         return this.§8w§[param1];
      }
      
      public function §]C§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§ set§[param1];
         if(!(_loc4_ && this))
         {
            if(_loc3_)
            {
               if(_loc5_)
               {
                  return _loc3_;
               }
            }
         }
         _loc3_ = §?h§.§8g§(param1,param2);
         if(_loc5_)
         {
            this.§ set§[param1] = _loc3_;
            do
            {
               this.§16§(_loc3_,param1,true);
            }
            while(_loc4_);
            
         }
         return _loc3_;
      }
      
      public function §16§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:* = 1;
         if(!(_loc7_ && this))
         {
            if(!param3)
            {
               §§push(-1);
               while(true)
               {
                  _loc4_ = §§pop();
                  addr246:
                  while(true)
                  {
                  }
               }
               addr245:
            }
            loop2:
            while(true)
            {
               if(param2)
               {
                  if(_loc7_ && param3)
                  {
                     continue;
                  }
                  §§push(this);
                  §§push(this.§]!4§);
                  §§push(_loc4_ * param2.width);
                  if(!(_loc7_ && param3))
                  {
                     §§push(§§pop() * param2.height);
                     if(!_loc7_)
                     {
                        addr237:
                        §§push(§§pop() * 4);
                     }
                     §§pop().§]!4§ = §§pop() + §§pop();
                     addr188:
                     if(param1)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(param1.width);
                           while(true)
                           {
                              §§push(int(§§pop()));
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    _loc5_ = §§pop();
                                    §§push(param1.height);
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    §§push(int(§§pop()));
                                    if(!(_loc8_ || this))
                                    {
                                       continue;
                                    }
                                    _loc6_ = §§pop();
                                    if(_loc7_)
                                    {
                                       continue loop3;
                                    }
                                    addr82:
                                    §§push(_loc5_);
                                    if(!(_loc7_ && this))
                                    {
                                       addr92:
                                       §§push(§§pop() >= 1);
                                       if(_loc8_)
                                       {
                                          if(§§pop())
                                          {
                                             addr97:
                                             §§pop();
                                             addr98:
                                             if(_loc8_)
                                             {
                                                §§push(_loc6_);
                                                if(!_loc7_)
                                                {
                                                   if(_loc8_ || param1)
                                                   {
                                                      §§push(1);
                                                      if(_loc8_ || param3)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               §§push(§§pop() >= §§pop());
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  addr62:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc7_ && param3))
                                                                     {
                                                                        if(!(_loc8_ || param1))
                                                                        {
                                                                           addr130:
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              §§goto(addr82);
                                                                           }
                                                                           addr142:
                                                                           _loc5_ >>= 1;
                                                                           addr140:
                                                                           §§push(_loc6_ >> 1);
                                                                           if(_loc8_ || this)
                                                                           {
                                                                              if(_loc8_ || param3)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 §§goto(addr130);
                                                                              }
                                                                              §§goto(addr140);
                                                                           }
                                                                           §§goto(addr142);
                                                                           addr170:
                                                                           addr141:
                                                                           addr143:
                                                                        }
                                                                        break loop2;
                                                                     }
                                                                     §§goto(addr98);
                                                                  }
                                                                  §§push(this);
                                                                  §§push(this.§69§);
                                                                  §§push(_loc4_ * _loc5_);
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(_loc8_ || param3)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr167:
                                                                           §§push(§§pop() * 4);
                                                                        }
                                                                        §§pop().§69§ = §§pop() + §§pop();
                                                                        §§goto(addr170);
                                                                     }
                                                                  }
                                                                  §§goto(addr167);
                                                               }
                                                               §§goto(addr97);
                                                            }
                                                            §§goto(addr141);
                                                         }
                                                         §§goto(addr130);
                                                      }
                                                      §§goto(addr92);
                                                   }
                                                   §§goto(addr130);
                                                }
                                                §§goto(addr82);
                                             }
                                             §§goto(addr143);
                                          }
                                          §§goto(addr62);
                                       }
                                       §§goto(addr97);
                                    }
                                    §§goto(addr130);
                                 }
                                 else
                                 {
                                    §§goto(addr245);
                                 }
                              }
                           }
                        }
                        addr191:
                     }
                     break;
                  }
                  §§goto(addr237);
               }
               §§goto(addr188);
            }
            return;
         }
         §§goto(addr191);
      }
      
      public function §9!5§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§5b§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     addr40:
                     this.§5b§ = this.§]C§(new BitmapData(40,40,false,16711935));
                  }
               }
               return this.§5b§;
            }
         }
         §§goto(addr40);
      }
      
      public function §1l§(param1:Texture) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§ set§;
         do
         {
            for(_loc2_ in _loc5_)
            {
               if(!(_loc6_ || _loc2_))
               {
                  break;
               }
            }
            return;
         }
         while(this.§ set§[_loc2_] != param1);
         
         _loc3_ = _loc2_ as BitmapData;
         this.§16§(param1,_loc3_,false);
         loop1:
         do
         {
            if(_loc3_)
            {
               loop2:
               while(true)
               {
                  _loc3_.dispose();
                  addr91:
                  while(true)
                  {
                     delete this.§ set§[_loc2_];
                     if(!(_loc7_ && param1))
                     {
                        break;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
            §§goto(addr91);
         }
         while(param1.dispose(), !_loc6_);
         
      }
      
      public function §6x§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§1D§ = this.§,Y§(param1);
         if(!(_loc3_ && this))
         {
            if(_loc2_ == null)
            {
               if(_loc4_)
               {
                  §§push(this.§,Y§(param1 + "_1"));
                  if(!(_loc3_ && param1))
                  {
                     _loc2_ = §§pop();
                     addr68:
                     if(_loc2_ == null)
                     {
                        if(_loc4_)
                        {
                           addr78:
                           _loc2_ = this.§,Y§(param1 + "_01");
                           addr80:
                           if(_loc2_ == null)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 §§goto(addr90);
                              }
                           }
                           return _loc2_.bitmapData;
                           addr73:
                        }
                        addr90:
                        return null;
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr78);
               }
               §§goto(addr73);
            }
            §§goto(addr68);
         }
         §§goto(addr78);
      }
   }
}
