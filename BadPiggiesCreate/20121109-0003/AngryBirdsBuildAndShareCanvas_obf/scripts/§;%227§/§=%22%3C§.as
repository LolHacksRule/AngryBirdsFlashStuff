package §;"7§
{
   import §%!j§.§%K§;
   import §0!%§.§"!4§;
   import §0!%§.Texture;
   import §8s§.§8"§;
   import §8s§.§`H§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §="<§ extends EventDispatcher
   {
      
      private static const §<k§:int = 2;
      
      private static const §]>§:int = 2048;
      
      private static var §""#§:§="<§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<k§ = 2;
         }
         do
         {
            §]>§ = 2048;
         }
         while(!_loc2_);
         
      }
      
      private var § e§:Dictionary;
      
      private var §<!s§:Vector.<§`H§>;
      
      private var §28§:Dictionary;
      
      private var §15§:Boolean;
      
      private var §&&§:String;
      
      private var §=">§:Texture;
      
      private var §""9§:int;
      
      private var §"!g§:int;
      
      public function §="<§(param1:String = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§<!s§ = new Vector.<§`H§>();
               do
               {
                  this.§ e§ = new Dictionary();
                  continue loop0;
               }
               while(_loc2_ && _loc3_);
               
            }
         }
      }
      
      public static function get §[E§() : §="<§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§""#§);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     addr50:
                     §""#§ = new §="<§();
                  }
               }
               return §""#§;
            }
         }
         §§goto(addr50);
      }
      
      public function get §6!K§() : int
      {
         return this.§""9§;
      }
      
      public function get §!!v§() : int
      {
         return this.§"!g§;
      }
      
      public function get id() : String
      {
         return this.§&&§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§+!I§ = null;
         var _loc2_:§`H§ = null;
         if(!_loc6_)
         {
            if(this.§ e§)
            {
               addr27:
               var _loc3_:int = 0;
               var _loc4_:* = this.§ e§;
               loop13:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc5_)
                        {
                           this.§2A§(_loc1_.texture.parent);
                           if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           }
                        }
                        _loc1_.dispose();
                        continue;
                     }
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && _loc1_))
                        {
                           if(!(_loc6_ && _loc2_))
                           {
                              this.§ e§ = null;
                              if(_loc5_)
                              {
                                 addr83:
                                 if(this.§<!s§)
                                 {
                                    if(_loc5_)
                                    {
                                       _loc3_ = 0;
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          addr97:
                                          _loc4_ = this.§<!s§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop13;
                                          }
                                          addr122:
                                       }
                                       if(_loc5_ || _loc2_)
                                       {
                                          this.§<!s§ = null;
                                          loop1:
                                          while(true)
                                          {
                                             addr220:
                                             while(true)
                                             {
                                                if(this.§28§)
                                                {
                                                   addr233:
                                                   while(true)
                                                   {
                                                      this.§28§ = null;
                                                      addr236:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr233:
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(this.§=">§);
                                                   if(_loc5_ || this)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr215:
                                                         while(true)
                                                         {
                                                            §§push(this.§=">§);
                                                            addr217:
                                                            while(true)
                                                            {
                                                               §§pop().dispose();
                                                               addr218:
                                                               while(true)
                                                               {
                                                                  this.§=">§ = null;
                                                                  addr203:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr215:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§<!s§ = new Vector.<§`H§>();
                                                         addr189:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§goto(addr203);
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                   §§goto(addr217);
                                                }
                                             }
                                          }
                                          addr240:
                                       }
                                       §§goto(addr218);
                                    }
                                    §§goto(addr233);
                                 }
                                 §§goto(addr220);
                              }
                              §§goto(addr240);
                           }
                           §§goto(addr215);
                        }
                     }
                     §§goto(addr97);
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
                  §§goto(addr97);
               }
            }
            §§goto(addr83);
         }
         §§goto(addr27);
      }
      
      public function §[h§(param1:§`H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.§15§)
            {
               while(true)
               {
                  if(this.§<!s§.indexOf(param1) < 0)
                  {
                     loop1:
                     while(true)
                     {
                        this.§<!s§.push(param1);
                        if(_loc2_)
                        {
                           break;
                        }
                        addr65:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     return;
                  }
               }
               return;
            }
            return;
         }
         §§goto(addr65);
      }
      
      private function §;v§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:§`H§ = null;
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
                  if(_loc11_ || _loc2_)
                  {
                     §§push(_loc9_.scale);
                     if(!(_loc12_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc12_ && param1))
                        {
                           addr78:
                           _loc7_ = §§pop();
                           if(!(_loc11_ || this))
                           {
                              addr91:
                              break;
                           }
                           addr86:
                        }
                        else
                        {
                           addr89:
                           if(§§pop() != _loc7_)
                           {
                              §§goto(addr91);
                           }
                        }
                        _loc10_ = _loc9_.bitmapData;
                        if(!(_loc12_ && _loc3_))
                        {
                           §§push(_loc2_);
                           loop1:
                           while(true)
                           {
                              if(§§pop() + _loc10_.width + §<k§ >= §]>§)
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
                                          if(!(_loc12_ && param1))
                                          {
                                             §§push(_loc6_);
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr316:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                addr147:
                                                if(_loc12_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc11_)
                                                {
                                                   addr158:
                                                   §§push(int(§§pop()));
                                                   if(!(_loc12_ && _loc2_))
                                                   {
                                                      continue loop1;
                                                   }
                                                   loop19:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      loop20:
                                                      while(true)
                                                      {
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(_loc10_.height + §<k§ <= _loc6_)
                                                            {
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  _loc8_++;
                                                                  if(!_loc12_)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        continue loop20;
                                                                     }
                                                                     if(_loc11_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr114);
                                                                     }
                                                                     §§goto(addr268);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(!(_loc12_ && param1))
                                                                     {
                                                                        continue loop25;
                                                                     }
                                                                     addr183:
                                                                  }
                                                               }
                                                               continue loop0;
                                                            }
                                                            if(!(_loc12_ && this))
                                                            {
                                                               if(!(_loc12_ && param1))
                                                               {
                                                                  addr212:
                                                                  if(!(_loc12_ && param1))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(int(_loc10_.height + §<k§));
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              addr226:
                                                                              if(!(_loc12_ && _loc3_))
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 addr237:
                                                                                 while(true)
                                                                                 {
                                                                                    addr114:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc12_ && _loc3_)
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       if(!(_loc11_ || param1))
                                                                                       {
                                                                                          continue loop27;
                                                                                       }
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          addr132:
                                                                                          if(_loc11_ || _loc3_)
                                                                                          {
                                                                                             addr139:
                                                                                             §§push(_loc6_);
                                                                                             if(!(_loc12_ && _loc2_))
                                                                                             {
                                                                                                §§goto(addr147);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   while(!(_loc12_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   while(_loc11_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         addr261:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() + _loc10_.height + §<k§ >= §]>§)
                                                                                                            {
                                                                                                               addr268:
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            addr317:
                                                                                                            addr270:
                                                                                                            §§push(_loc2_);
                                                                                                            while(!(_loc12_ && param1))
                                                                                                            {
                                                                                                               §§push(int(§§pop() + (_loc10_.width + §<k§)));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc12_ && _loc3_))
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     break loop21;
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  §§goto(addr226);
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               addr318:
                                                                                                               while(!_loc12_)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                   addr302:
                                                                                                   addr246:
                                                                                                }
                                                                                                continue loop21;
                                                                                                §§goto(addr139);
                                                                                             }
                                                                                             addr245:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             §§goto(addr302);
                                                                                             §§goto(addr132);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr261);
                                                                                    }
                                                                                    continue loop27;
                                                                                 }
                                                                                 while(_loc11_ || this)
                                                                                 {
                                                                                    §§goto(addr245);
                                                                                    §§push(_loc4_);
                                                                                 }
                                                                                 §§goto(addr270);
                                                                                 addr237:
                                                                                 addr234:
                                                                              }
                                                                              §§goto(addr283);
                                                                           }
                                                                           §§goto(addr237);
                                                                        }
                                                                     }
                                                                     addr219:
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr246);
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc11_ || _loc3_)
                                                            {
                                                               §§goto(addr237);
                                                               §§push(_loc2_);
                                                            }
                                                            break;
                                                            §§goto(addr212);
                                                         }
                                                         §§goto(addr318);
                                                      }
                                                   }
                                                }
                                                §§goto(addr316);
                                             }
                                          }
                                          §§goto(addr317);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr259);
                           }
                        }
                        §§goto(addr219);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr86);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr89);
            }
            §§goto(addr86);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §4!a§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:§`H§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§>!U§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§8"§ = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
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
               if(_loc15_ && this)
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(_loc14_)
               {
                  §§push(!isNaN(_loc7_));
                  if(_loc14_ || param2)
                  {
                     if(§§pop())
                     {
                        if(!(_loc15_ && param2))
                        {
                           addr80:
                           §§pop();
                           if(!(_loc15_ && this))
                           {
                              addr88:
                              §§push(_loc7_);
                              if(_loc14_ || _loc3_)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(!_loc15_)
                                 {
                                    addr102:
                                    addr101:
                                    if(!§§pop())
                                    {
                                       if(!(_loc15_ && _loc3_))
                                       {
                                          addr110:
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(_loc14_ || _loc3_)
                                       {
                                          addr121:
                                          _loc7_ = §§pop();
                                       }
                                       §§goto(addr121);
                                    }
                                    _loc9_ = _loc8_.bitmapData;
                                    if(_loc14_)
                                    {
                                       §§push(_loc3_);
                                       loop2:
                                       while(true)
                                       {
                                          if(§§pop() + _loc9_.width + §<k§ > param2.width)
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
                                                      loop6:
                                                      while(_loc14_)
                                                      {
                                                         §§push(int(§§pop() + _loc5_));
                                                         while(_loc14_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            while(_loc14_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr210:
                                                                  while(true)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     addr211:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               if(_loc15_ && _loc3_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc15_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               while(false)
                                                               {
                                                                  §§goto(addr208);
                                                               }
                                                               (_loc10_ = new §>!U§()).offset = new Point(_loc3_,_loc4_);
                                                               if(_loc14_)
                                                               {
                                                                  _loc10_.§@!^§ = _loc8_;
                                                                  while(true)
                                                                  {
                                                                     _loc6_.push(_loc10_);
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        addr280:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc8_.§%!q§);
                                                                           if(!(_loc15_ && _loc3_))
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           addr291:
                                                                           while(true)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              continue loop15;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr271:
                                                                     if(!(_loc14_ || _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr280);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc12_);
                                                                        if(!_loc15_)
                                                                        {
                                                                           if(§§pop() < _loc11_)
                                                                           {
                                                                              (_loc13_ = _loc8_.§+>§(_loc12_)).§<!m§ = null;
                                                                              if(!(_loc15_ && param2))
                                                                              {
                                                                                 _loc13_.§`!%§.offset(_loc3_,_loc4_);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              _loc12_++;
                                                                              continue;
                                                                           }
                                                                           if(!_loc15_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§push(int(§§pop() + (_loc9_.width + §<k§)));
                                                                                 if(_loc15_)
                                                                                 {
                                                                                 }
                                                                                 addr368:
                                                                                 _loc5_ = §§pop();
                                                                                 if(!(_loc15_ && param1))
                                                                                 {
                                                                                    param1.splice(0,1);
                                                                                    addr376:
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              _loc3_ = §§pop();
                                                                              if(_loc14_)
                                                                              {
                                                                                 if(_loc9_.height + §<k§ > _loc5_)
                                                                                 {
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§goto(addr368);
                                                                                       §§push(int(_loc9_.height + §<k§));
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr376);
                                                                        }
                                                                        §§goto(addr368);
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        _loc12_ = §§pop();
                                                                        if(_loc14_ || param2)
                                                                        {
                                                                           if(!_loc15_)
                                                                           {
                                                                              §§goto(addr271);
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     §§goto(addr291);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr368);
                                                            }
                                                            continue loop5;
                                                            if(_loc14_ || _loc3_)
                                                            {
                                                               if(_loc15_ && _loc3_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               if(§§pop() + _loc9_.height + §<k§ > param2.height)
                                                               {
                                                                  if(_loc15_ && this)
                                                                  {
                                                                     addr180:
                                                                     if(_loc14_ || param1)
                                                                     {
                                                                        §§goto(addr197);
                                                                     }
                                                                     §§goto(addr211);
                                                                  }
                                                                  addr167:
                                                                  break loop1;
                                                               }
                                                               param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                               §§goto(addr180);
                                                               continue loop6;
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc15_ && param1))
                                             {
                                                §§goto(addr138);
                                             }
                                             §§goto(addr210);
                                             §§goto(addr211);
                                          }
                                          §§goto(addr167);
                                       }
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr80);
               }
               §§goto(addr88);
            }
            return _loc6_;
         }
      }
      
      public function §8!u§() : Boolean
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc1_:§`H§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§>!U§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§8"§ = null;
         if(!(_loc15_ && this))
         {
            §§push(§%K§.§,!>§());
            if(!(_loc15_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!(_loc15_ && this))
                  {
                     §§push(false);
                     if(_loc14_)
                     {
                        return §§pop();
                     }
                     addr82:
                     if(§§pop())
                     {
                        if(_loc14_ || this)
                        {
                           §§goto(addr91);
                        }
                     }
                     var _loc2_:Array = [];
                     var _loc12_:int = 0;
                     var _loc13_:* = this.§<!s§;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc13_,_loc12_));
                        if(!(_loc15_ && this))
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc12_,_loc13_);
                              if(_loc14_)
                              {
                                 if(_loc1_.§%!q§ > 0)
                                 {
                                    if(!_loc15_)
                                    {
                                       _loc2_.push(_loc1_);
                                    }
                                 }
                              }
                              continue;
                           }
                           if(!_loc15_)
                           {
                              if(_loc14_ || _loc2_)
                              {
                                 if(_loc14_)
                                 {
                                    while(_loc2_.length > 0)
                                    {
                                       _loc3_ = this.§;v§(_loc2_);
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
                                       if((_loc5_ = this.§4!a§(_loc2_,_loc4_)).length == 0)
                                       {
                                          if(!_loc15_)
                                          {
                                             throw new Error("Found too large sprite sheet image!");
                                          }
                                       }
                                       _loc6_ = this.§%N§(_loc4_);
                                       if(_loc14_ || this)
                                       {
                                          §§push(0);
                                          if(_loc14_)
                                          {
                                             _loc7_ = §§pop();
                                             if(!(_loc14_ || this))
                                             {
                                                continue;
                                             }
                                             addr222:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                             }
                                             addr306:
                                          }
                                          for(; §§pop() < _loc5_.length; §§goto(addr306))
                                          {
                                             _loc1_ = (_loc8_ = _loc5_[_loc7_]).§@!^§;
                                             if(!_loc14_)
                                             {
                                                continue;
                                             }
                                             §§push(_loc1_.§%!q§);
                                             if(_loc14_)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc14_ || _loc2_)
                                                {
                                                   addr247:
                                                   _loc9_ = §§pop();
                                                   if(_loc14_ || _loc2_)
                                                   {
                                                      §§push(0);
                                                      if(!(_loc15_ && _loc2_))
                                                      {
                                                         addr263:
                                                         _loc10_ = §§pop();
                                                         if(!(_loc15_ && this))
                                                         {
                                                            addr271:
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§push(_loc10_);
                                                               addr296:
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= _loc9_)
                                                                  {
                                                                     break loop3;
                                                                  }
                                                                  _loc11_ = _loc1_.§+>§(_loc10_);
                                                                  if(!_loc15_)
                                                                  {
                                                                     this.§9D§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                     if(!(_loc14_ || _loc1_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  _loc10_++;
                                                               }
                                                            }
                                                            if(!(_loc14_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         _loc7_++;
                                                         continue;
                                                      }
                                                      §§goto(addr296);
                                                   }
                                                   §§goto(addr271);
                                                }
                                                §§goto(addr263);
                                             }
                                             §§goto(addr247);
                                          }
                                          continue;
                                       }
                                       §§goto(addr222);
                                    }
                                    if(!_loc15_)
                                    {
                                       _loc12_ = 0;
                                       if(!_loc15_)
                                       {
                                          _loc13_ = this.§<!s§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc13_,_loc12_));
                                             break loop0;
                                          }
                                          addr343:
                                          if(!_loc15_)
                                          {
                                             this.§<!s§ = new Vector.<§`H§>();
                                             addr346:
                                          }
                                          do
                                          {
                                             this.§15§ = true;
                                          }
                                          while(_loc15_);
                                          
                                          addr342:
                                          addr340:
                                       }
                                       §§goto(addr343);
                                    }
                                    return true;
                                 }
                                 §§goto(addr346);
                              }
                              §§goto(addr343);
                           }
                           §§goto(addr342);
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
                        §§goto(addr343);
                     }
                  }
                  else
                  {
                     addr78:
                     §§push(this.§15§);
                     if(_loc14_)
                     {
                        §§goto(addr82);
                     }
                  }
               }
               §§goto(addr78);
            }
            addr91:
            return true;
         }
         §§goto(addr78);
      }
      
      private function §9D§(param1:§8"§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§"!4§ = null;
         var _loc5_:§+!I§;
         if(!(_loc5_ = this.§ e§[param1.mName]))
         {
            _loc6_ = param1.§`!%§.clone();
            _loc7_ = new §"!4§(param2,_loc6_,false);
            _loc5_ = new §+!I§(_loc7_,param3,_loc6_,param1.§=;§,param1.§62§,param4);
            if(!_loc8_)
            {
               this.§ e§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §[=§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && this))
         {
            §§push(null);
            if(!(_loc5_ && _loc1_))
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc5_)
               {
                  addr43:
                  var texture:Texture = null;
                  if(!_loc5_)
                  {
                     §§goto(addr47);
                  }
                  §§goto(addr50);
               }
               addr47:
               if(!§%K§.§!!S§)
               {
                  addr50:
                  var _loc2_:int = 0;
                  var _loc3_:* = this.§28§;
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     if(_loc6_)
                     {
                        §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                        if(!_loc5_)
                        {
                           try
                           {
                              §§push(§§newactivation());
                              if(_loc6_ || _loc3_)
                              {
                                 §§pop().§§slot[2] = this.§28§[bd];
                                 if(_loc6_ || _loc2_)
                                 {
                                    addr101:
                                    texture.requestBaseTextureUpdate(bd as BitmapData);
                                 }
                              }
                              §§goto(addr101);
                           }
                           catch(e:Error)
                           {
                           }
                        }
                        continue;
                     }
                     §§goto(addr101);
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §5!!§(param1:String) : §+!I§
      {
         return this.§ e§[param1];
      }
      
      public function §%N§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§28§[param1];
         if(_loc5_ || param1)
         {
            if(_loc3_)
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr49);
               }
            }
            _loc3_ = §%K§.§1q§(param1,param2);
            if(_loc5_)
            {
               this.§28§[param1] = _loc3_;
            }
            do
            {
               this.§#"$§(_loc3_,param1,true);
            }
            while(!(_loc5_ || this));
            
            return _loc3_;
         }
         addr49:
         return _loc3_;
      }
      
      public function §#"$§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:* = 1;
         if(_loc7_)
         {
            if(!param3)
            {
               while(true)
               {
                  §§push(-1);
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
               addr271:
            }
            loop2:
            while(true)
            {
               if(param2)
               {
                  while(true)
                  {
                     if(!_loc8_)
                     {
                        §§push(this);
                        §§push(this.§"!g§);
                        §§push(_loc4_ * param2.width);
                        if(_loc7_)
                        {
                           §§push(§§pop() * param2.height);
                           if(_loc7_)
                           {
                              addr254:
                              §§push(§§pop() * 4);
                           }
                           §§pop().§"!g§ = §§pop() + §§pop();
                           while(true)
                           {
                              §§goto(addr211);
                           }
                        }
                        §§goto(addr254);
                     }
                     else
                     {
                        §§goto(addr271);
                     }
                  }
                  §§goto(addr272);
               }
               addr211:
               loop5:
               while(param1)
               {
                  if(_loc7_ || param3)
                  {
                     if(!_loc7_)
                     {
                        continue loop4;
                     }
                     §§push(param1.width);
                     loop6:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        addr226:
                        while(true)
                        {
                           if(_loc8_ && param1)
                           {
                              break loop3;
                           }
                           _loc5_ = §§pop();
                           continue loop6;
                        }
                     }
                     addr225:
                  }
                  while(true)
                  {
                     §§push(param1.height);
                     if(_loc7_ || param3)
                     {
                        §§push(int(§§pop()));
                        if(!(_loc8_ && param3))
                        {
                           _loc6_ = §§pop();
                           if(_loc8_)
                           {
                              continue;
                           }
                           if(_loc8_ && param1)
                           {
                              continue loop3;
                           }
                           if(_loc8_)
                           {
                              continue loop2;
                           }
                           addr81:
                           §§push(_loc5_);
                           §§push(1);
                           if(_loc7_ || param1)
                           {
                              §§push(§§pop() >= §§pop());
                              if(!_loc8_)
                              {
                                 if(§§pop())
                                 {
                                    addr96:
                                    §§pop();
                                    addr97:
                                    §§push(_loc6_);
                                    if(_loc7_ || param2)
                                    {
                                       if(!_loc8_)
                                       {
                                          §§push(1);
                                          if(!(_loc8_ && param1))
                                          {
                                             if(!(_loc8_ && param2))
                                             {
                                                §§push(§§pop() >= §§pop());
                                                if(_loc7_)
                                                {
                                                   addr54:
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            if(_loc8_ && param3)
                                                            {
                                                               addr146:
                                                               §§push(_loc5_);
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  addr145:
                                                                  §§push(§§pop() >> 1);
                                                               }
                                                               _loc5_ = §§pop();
                                                               addr147:
                                                               §§push(_loc6_);
                                                               if(_loc7_ || param2)
                                                               {
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     addr116:
                                                                     _loc6_ = §§pop() >> 1;
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        §§goto(addr81);
                                                                     }
                                                                     §§goto(addr147);
                                                                     addr115:
                                                                  }
                                                                  §§goto(addr146);
                                                               }
                                                               §§goto(addr116);
                                                               addr179:
                                                            }
                                                            break loop5;
                                                         }
                                                         §§goto(addr116);
                                                      }
                                                      §§goto(addr97);
                                                   }
                                                   §§push(this);
                                                   §§push(this.§""9§);
                                                   §§push(_loc4_ * _loc5_);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      §§push(_loc6_);
                                                      if(!(_loc8_ && this))
                                                      {
                                                         addr177:
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc8_)
                                                         {
                                                            §§push(4);
                                                         }
                                                         §§pop().§""9§ = §§pop() + §§pop();
                                                         §§goto(addr179);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr177);
                                                }
                                                §§goto(addr96);
                                             }
                                             §§goto(addr115);
                                          }
                                          §§goto(addr81);
                                       }
                                       §§goto(addr116);
                                    }
                                    §§goto(addr81);
                                 }
                                 §§goto(addr54);
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr145);
                        }
                     }
                     else
                     {
                        §§goto(addr225);
                     }
                     §§goto(addr226);
                  }
               }
               return;
            }
         }
         §§goto(addr273);
      }
      
      public function §-t§() : Texture
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§=">§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     this.§=">§ = this.§%N§(new BitmapData(40,40,false,16711935));
                     addr61:
                     §§push(this.§=">§);
                  }
               }
               §§goto(addr61);
            }
            return §§pop();
         }
         §§goto(addr61);
      }
      
      public function §2A§(param1:Texture) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§28§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(_loc6_)
               {
                  break;
               }
               if(this.§28§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(!_loc6_)
         {
            this.§#"$§(param1,_loc3_,false);
            loop1:
            while(true)
            {
               if(_loc3_)
               {
                  while(true)
                  {
                     _loc3_.dispose();
                     addr97:
                     while(true)
                     {
                     }
                     addr73:
                     if(_loc7_ || this)
                     {
                        return;
                        addr80:
                     }
                  }
               }
               while(true)
               {
                  delete this.§28§[_loc2_];
                  while(!_loc6_)
                  {
                     if(!_loc6_)
                     {
                        param1.dispose();
                        if(_loc6_)
                        {
                           continue;
                        }
                        §§goto(addr73);
                        continue;
                     }
                     continue loop1;
                  }
                  §§goto(addr97);
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §`d§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+!I§ = this.§5!!§(param1);
         if(!(_loc3_ && this))
         {
            if(_loc2_ == null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§push(this.§5!!§(param1 + "_1"));
                  if(_loc4_ || _loc2_)
                  {
                     _loc2_ = §§pop();
                     addr63:
                     if(_loc2_ == null)
                     {
                        if(_loc4_ || param1)
                        {
                           addr78:
                           _loc2_ = this.§5!!§(param1 + "_01");
                        }
                        §§goto(addr102);
                     }
                     if(_loc2_ == null)
                     {
                        if(!(_loc3_ && param1))
                        {
                           return null;
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr78);
               }
               §§goto(addr102);
            }
            §§goto(addr63);
         }
         addr102:
         return _loc2_.bitmapData;
      }
   }
}
