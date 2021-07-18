package §+!J§
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>n§ extends Sprite
   {
      
      private static const §?#H§:Point;
      
      public static const §&0§:uint = 0;
      
      public static const §@h§:uint = 1;
      
      public static const §7"@§:uint = 2;
      
      public static const §^"S§:uint = 3;
      
      public static const §%# §:uint = 4;
      
      public static const §7=§:uint = 5;
      
      public static const §5"7§:uint = 6;
      
      public static const §"F§:uint = 7;
      
      public static const §'"$§:uint = 8;
      
      public static const §!"m§:uint = 0;
      
      public static const §,C§:uint = 1;
      
      public static const §@"Z§:uint = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?#H§ = new Point();
            loop0:
            while(true)
            {
               §&0§ = 0;
               loop1:
               while(true)
               {
                  §@h§ = 1;
                  loop2:
                  while(true)
                  {
                     §7"@§ = 2;
                     loop3:
                     while(true)
                     {
                        §^"S§ = 3;
                        loop4:
                        while(!_loc2_)
                        {
                           §%# § = 4;
                           loop5:
                           while(true)
                           {
                              §7=§ = 5;
                              loop6:
                              while(true)
                              {
                                 §5"7§ = 6;
                                 while(!_loc2_)
                                 {
                                    while(_loc1_ || _loc2_)
                                    {
                                       continue loop5;
                                       loop12:
                                       while(_loc1_ || _loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             §@"Z§ = 2;
                                             if(!_loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      return;
                                                      addr33:
                                                   }
                                                   continue loop4;
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         §!"m§ = 0;
                                                         break loop12;
                                                      }
                                                      break;
                                                   }
                                                   addr85:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §'"$§ = 8;
                                                         continue loop10;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop6;
                                             }
                                             continue;
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §"F§ = 7;
            §§goto(addr85);
         }
         §§goto(addr33);
      }
      
      public var data;
      
      public function §>n§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      protected function §6"Q§(... rest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            trace.apply(this,rest);
         }
      }
      
      public function §]#J§(param1:DisplayObject, param2:Number, param3:Number, param4:Boolean = false, param5:Boolean = false) : DisplayObject
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            param1.x = param2;
         }
         while(true)
         {
            §§push(param5);
            loop1:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     param1.x -= param1.width >> 1;
                     addr104:
                     while(true)
                     {
                     }
                  }
                  addr85:
               }
               while(true)
               {
                  param1.y = param3;
                  continue loop1;
               }
            }
            if(!(_loc7_ || this))
            {
               continue;
            }
            param1.y -= param1.height >> 1;
            §§goto(addr76);
         }
      }
      
      public function §7!Y§(param1:Function = null) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:DisplayObject = null;
         var _loc2_:int = numChildren;
         while(numChildren > 0)
         {
            _loc3_ = removeChild(getChildAt(0));
            if(_loc5_ || _loc2_)
            {
               §§push(param1);
               if(_loc5_ || _loc3_)
               {
                  if(§§pop() == null)
                  {
                     continue;
                  }
                  if(!(_loc5_ || param1))
                  {
                     continue;
                  }
                  addr66:
                  §§push(param1);
               }
               §§pop()(_loc3_);
               continue;
            }
            §§goto(addr66);
         }
         return _loc2_;
      }
      
      public function §[`§() : Array
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= numChildren)
            {
               if(!_loc3_)
               {
                  break;
               }
               loop1:
               while(!(_loc4_ || _loc1_))
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            _loc1_.push(getChildAt(_loc2_));
            §§goto(addr70);
         }
         return _loc1_;
      }
      
      public function §8!9§(param1:int = 0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:DisplayObject = null;
         var _loc2_:Array = this.§[`§();
         var _loc3_:Number = 0;
         var _loc4_:Rectangle = getRect(this);
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_.length)
         {
            _loc6_ = DisplayObject(_loc2_[_loc5_]);
            if(_loc9_ && param1)
            {
               continue;
            }
            §§push(param1);
            if(!_loc9_)
            {
               var _loc7_:* = §§pop();
               if(!_loc9_)
               {
                  §§push(§@h§);
                  if(_loc8_)
                  {
                     §§push(_loc7_);
                     if(!_loc9_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc8_)
                           {
                              addr127:
                              §§push(0);
                              if(_loc8_ || param1)
                              {
                              }
                           }
                           else
                           {
                              addr145:
                              §§push(1);
                              if(_loc9_)
                              {
                                 addr173:
                              }
                           }
                        }
                        else
                        {
                           §§push(§&0§);
                           if(_loc8_)
                           {
                              §§push(_loc7_);
                              if(!_loc9_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc9_)
                                    {
                                       §§goto(addr145);
                                    }
                                    addr189:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc6_.y = _loc4_.height - _loc6_.height;
                                          if(_loc8_ || _loc2_)
                                          {
                                             break;
                                          }
                                          break;
                                       case 1:
                                          _loc6_.y = 0;
                                          if(!_loc9_)
                                          {
                                             addr64:
                                             break;
                                          }
                                          break;
                                       case 2:
                                          _loc6_.x = 0;
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                          continue;
                                       case 3:
                                          _loc6_.x = _loc4_.width - _loc6_.width;
                                          if(!_loc9_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr64);
                                          }
                                    }
                                    _loc5_++;
                                    addr178:
                                    continue;
                                    addr178:
                                 }
                                 else
                                 {
                                    §§push(§7"@§);
                                    if(_loc8_)
                                    {
                                       addr152:
                                       §§push(_loc7_);
                                       if(_loc8_ || param1)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc9_)
                                             {
                                                §§push(2);
                                                if(!_loc8_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr170:
                                                §§push(3);
                                                if(_loc8_)
                                                {
                                                   §§goto(addr173);
                                                }
                                             }
                                             §§goto(addr178);
                                          }
                                          else
                                          {
                                             §§push(§^"S§);
                                          }
                                          §§goto(addr170);
                                       }
                                       addr169:
                                       if(§§pop() === §§pop())
                                       {
                                          §§goto(addr170);
                                       }
                                       else
                                       {
                                          §§goto(addr178);
                                          §§push(4);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr169);
                                    §§push(_loc7_);
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr178);
                     }
                  }
                  §§goto(addr152);
               }
               §§goto(addr127);
            }
            §§goto(addr189);
         }
      }
      
      public function §7"0§(param1:Point) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            x = param1.x;
         }
         do
         {
            y = param1.y;
         }
         while(_loc3_ && this);
         
      }
      
      public function §>#3§() : Point
      {
         return new Point(x,y);
      }
      
      public function §!_§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            x = param1.x;
         }
         while(true)
         {
            y = param1.y;
            while(_loc3_ || param1)
            {
               width = param1.width;
               do
               {
                  height = param1.height;
               }
               while(_loc2_);
               
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §&"P§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            §?#H§.x = param1;
         }
         do
         {
            §?#H§.y = param2;
            do
            {
               this.§5!m§(§?#H§,§'"$§);
            }
            while(_loc4_ && param3);
            
         }
         while(!(_loc5_ || this));
         
      }
      
      public function §5!m§(param1:Point, param2:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = param2;
         if(!_loc5_)
         {
            §§push(§@h§);
            if(_loc4_)
            {
               §§push(_loc3_);
               if(_loc4_ || this)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(_loc5_ && this)
                        {
                           addr399:
                        }
                     }
                     else
                     {
                        addr309:
                        §§push(1);
                        if(_loc5_)
                        {
                           addr442:
                        }
                     }
                  }
                  else
                  {
                     §§push(§"F§);
                     if(_loc4_)
                     {
                        addr293:
                        §§push(_loc3_);
                        if(_loc4_ || _loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc5_ && this))
                              {
                                 §§goto(addr309);
                              }
                              else
                              {
                                 addr409:
                                 §§push(6);
                                 if(!_loc5_)
                                 {
                                    addr447:
                                    loop5:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          x = param1.x - width * 0.5;
                                          y = param1.y - height;
                                          break;
                                          addr259:
                                          addr248:
                                       case 1:
                                          x = param1.x;
                                          y = param1.y - height;
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             §§goto(addr259);
                                          }
                                          break;
                                          addr240:
                                       case 2:
                                          x = param1.x - width;
                                          y = param1.y - height;
                                          addr193:
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          §§goto(addr240);
                                          break;
                                          addr205:
                                       case 3:
                                          x = param1.x - width * 0.5;
                                          if(_loc4_)
                                          {
                                             y = param1.y;
                                             break;
                                             addr171:
                                          }
                                          break;
                                       case 4:
                                          x = param1.x;
                                          y = param1.y;
                                          addr150:
                                          if(!(_loc5_ && param1))
                                          {
                                             break;
                                          }
                                          §§goto(addr171);
                                          break;
                                          addr165:
                                       case 5:
                                          x = param1.x - width;
                                          addr142:
                                          if(!_loc5_)
                                          {
                                             y = param1.y;
                                             break;
                                             addr132:
                                          }
                                          else
                                          {
                                             §§goto(addr165);
                                          }
                                          break;
                                       case 6:
                                          y = param1.y - height * 0.5;
                                          loop0:
                                          while(true)
                                          {
                                             x = param1.x;
                                             addr112:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   break loop0;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          break;
                                       case 7:
                                          y = param1.y - height * 0.5;
                                          loop1:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      x = param1.x - width;
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            addr53:
                                                            break loop5;
                                                         }
                                                         continue loop1;
                                                      }
                                                      addr86:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr205);
                                                   }
                                                }
                                                §§goto(addr193);
                                             }
                                             else
                                             {
                                                §§goto(addr112);
                                             }
                                          }
                                          break;
                                       case 8:
                                          y = param1.y - height * 0.5;
                                          while(true)
                                          {
                                             if(!(_loc5_ && param2))
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   x = param1.x - width * 0.5;
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         if(_loc5_ && param2)
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(true)
                                                            {
                                                               break loop5;
                                                            }
                                                            §§goto(addr53);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr86);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   break loop5;
                                                }
                                                §§goto(addr142);
                                             }
                                             §§goto(addr132);
                                          }
                                          §§goto(addr150);
                                    }
                                    return;
                                    addr412:
                                 }
                                 §§goto(addr447);
                              }
                           }
                           else
                           {
                              §§push(§5"7§);
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr321:
                                 §§push(_loc3_);
                                 if(_loc4_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(2);
                                          if(_loc4_)
                                          {
                                             §§goto(addr447);
                                          }
                                          else
                                          {
                                             §§goto(addr412);
                                          }
                                       }
                                       §§goto(addr447);
                                    }
                                    else
                                    {
                                       §§push(§&0§);
                                       if(_loc4_)
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(3);
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr447);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr399);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr409);
                                                }
                                                §§goto(addr447);
                                             }
                                             else
                                             {
                                                §§push(§7=§);
                                                if(_loc4_ || this)
                                                {
                                                }
                                                addr385:
                                                §§push(_loc3_);
                                                if(!_loc5_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr391:
                                                         §§push(5);
                                                         if(_loc4_ || param2)
                                                         {
                                                            §§goto(addr399);
                                                         }
                                                         §§goto(addr447);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr409);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§7"@§);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc4_)
                                                         {
                                                            addr406:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr409);
                                                               }
                                                               else
                                                               {
                                                                  addr429:
                                                                  §§push(8);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr442);
                                                                  }
                                                                  §§goto(addr447);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(§^"S§);
                                                               if(!_loc5_)
                                                               {
                                                                  addr416:
                                                                  §§push(_loc3_);
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr419:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(7);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr447);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr442);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr429);
                                                                        }
                                                                        §§goto(addr447);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§'"$§);
                                                                     }
                                                                     §§goto(addr429);
                                                                  }
                                                                  addr428:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     §§goto(addr429);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr447);
                                                                     §§push(9);
                                                                  }
                                                                  §§goto(addr447);
                                                               }
                                                               addr427:
                                                               §§push(_loc3_);
                                                            }
                                                            §§goto(addr429);
                                                         }
                                                         §§goto(addr428);
                                                      }
                                                      §§goto(addr416);
                                                   }
                                                   §§goto(addr447);
                                                }
                                                §§goto(addr406);
                                             }
                                          }
                                          §§goto(addr419);
                                       }
                                       §§push(_loc3_);
                                       if(!(_loc5_ && param1))
                                       {
                                          addr365:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc4_ || this)
                                             {
                                                §§push(4);
                                                if(_loc5_)
                                                {
                                                }
                                             }
                                             §§goto(addr447);
                                          }
                                          else
                                          {
                                             §§push(§%# §);
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§goto(addr385);
                                             }
                                             §§goto(addr427);
                                          }
                                       }
                                       §§goto(addr419);
                                    }
                                 }
                                 §§goto(addr419);
                              }
                              §§goto(addr385);
                           }
                           §§goto(addr447);
                        }
                        §§goto(addr365);
                     }
                     §§goto(addr321);
                  }
                  §§goto(addr447);
               }
               §§goto(addr406);
            }
            §§goto(addr293);
         }
         §§goto(addr391);
      }
      
      public function §9V§(param1:Array, param2:int = -1, param3:int = 0, param4:Point = null, param5:int = 5) : Array
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc9_:DisplayObject = null;
         if(_loc14_)
         {
            if(!param4)
            {
               addr24:
               param4 = new Point();
            }
            var _loc6_:* = 0;
            var _loc7_:* = 0;
            var _loc8_:* = 0;
            §§push(param2);
            if(_loc14_)
            {
               while(true)
               {
                  var _loc10_:* = §§pop();
                  if(_loc14_)
                  {
                     §§push(§,C§);
                     if(!_loc13_)
                     {
                        §§push(_loc10_);
                        if(_loc14_ || param1)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc14_ || param2)
                              {
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc13_ && param1)
                                    {
                                    }
                                    addr573:
                                    while(true)
                                    {
                                       §§goto(addr574);
                                    }
                                 }
                                 addr515:
                              }
                           }
                           else
                           {
                              §§push(§!"m§);
                              if(_loc14_ || param1)
                              {
                                 addr532:
                                 §§push(_loc10_);
                                 if(!_loc13_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc14_ || this)
                                       {
                                          §§push(1);
                                          if(_loc14_ || param1)
                                          {
                                          }
                                          §§goto(addr573);
                                       }
                                       §§goto(addr555);
                                    }
                                    else
                                    {
                                       §§push(§@"Z§);
                                    }
                                    §§goto(addr555);
                                 }
                                 addr554:
                                 if(§§pop() !== §§pop())
                                 {
                                    §§goto(addr573);
                                    §§push(3);
                                 }
                                 §§goto(addr555);
                              }
                              §§goto(addr554);
                              §§push(_loc10_);
                           }
                           §§goto(addr555);
                        }
                        §§goto(addr554);
                     }
                     §§goto(addr532);
                  }
                  §§goto(addr515);
               }
            }
            addr574:
            loop4:
            while(true)
            {
               switch(§§pop())
               {
                  case 0:
                     §§push(0);
                     if(_loc14_)
                     {
                        _loc10_ = §§pop();
                        if(_loc14_)
                        {
                           §§push(param1);
                           if(!_loc14_)
                           {
                              break;
                           }
                           var _loc11_:* = §§pop();
                           while(true)
                           {
                              §§push(§§hasnext(_loc11_,_loc10_));
                              if(_loc14_)
                              {
                                 if(§§pop())
                                 {
                                    _loc9_ = §§nextvalue(_loc10_,_loc11_);
                                    if(_loc14_)
                                    {
                                       addChild(_loc9_);
                                       while(true)
                                       {
                                          _loc9_.y = param4.y + _loc6_;
                                          loop8:
                                          for(; !_loc13_; while(true)
                                          {
                                             if(!(_loc13_ && param1))
                                             {
                                                §§push(_loc6_);
                                                if(!_loc13_)
                                                {
                                                   §§push(int(§§pop() + (_loc9_.height + param3)));
                                                }
                                                _loc6_ = §§pop();
                                                if(!(_loc13_ && param2))
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop8;
                                          })
                                          {
                                             while(true)
                                             {
                                                _loc9_.x = param4.x;
                                                continue loop8;
                                             }
                                          }
                                       }
                                    }
                                    while(false)
                                    {
                                       §§goto(addr77);
                                    }
                                    continue;
                                 }
                                 if(!(_loc13_ && this))
                                 {
                                    if(!(_loc13_ && param3))
                                    {
                                       addr123:
                                       if(_loc13_)
                                       {
                                          addr489:
                                       }
                                    }
                                    else
                                    {
                                       addr430:
                                       if(_loc13_ && param2)
                                       {
                                       }
                                    }
                                    §§goto(addr575);
                                 }
                              }
                              else
                              {
                                 addr472:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       _loc9_ = §§nextvalue(_loc10_,_loc11_);
                                       if(!(_loc13_ && param2))
                                       {
                                          addChild(_loc9_);
                                       }
                                       continue;
                                    }
                                 }
                                 addr472:
                              }
                              addr473:
                              if(!(_loc13_ && param2))
                              {
                                 break loop4;
                              }
                              addr555:
                              addr555:
                              while(true)
                              {
                                 §§push(2);
                                 if(_loc13_)
                                 {
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     continue loop0;
                     §§goto(addr123);
                     break;
                  case 1:
                     §§push(0);
                     if(_loc14_ || param1)
                     {
                        _loc10_ = §§pop();
                        if(_loc13_ && param2)
                        {
                           addr451:
                           §§push(param1);
                           break;
                        }
                        §§push(param1);
                        if(!(_loc13_ && param3))
                        {
                           _loc11_ = §§pop();
                           loop18:
                           while(true)
                           {
                              §§push(§§hasnext(_loc11_,_loc10_));
                              if(!_loc13_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc13_)
                                    {
                                       if(_loc13_)
                                       {
                                          continue loop3;
                                       }
                                       if(!(_loc14_ || param1))
                                       {
                                          §§goto(addr489);
                                       }
                                       §§goto(addr575);
                                    }
                                 }
                                 else
                                 {
                                    _loc9_ = §§nextvalue(_loc10_,_loc11_);
                                    if(!_loc13_)
                                    {
                                       addChild(_loc9_);
                                    }
                                    loop19:
                                    while(true)
                                    {
                                       _loc9_.y = param4.y;
                                       addr211:
                                       while(true)
                                       {
                                          addr191:
                                          while(true)
                                          {
                                             _loc9_.x = param4.x + _loc6_;
                                             continue loop19;
                                          }
                                          continue loop18;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr472);
                              }
                              §§goto(addr473);
                           }
                        }
                        else
                        {
                           addr254:
                           _loc11_ = §§pop();
                           loop12:
                           while(true)
                           {
                              §§push(§§hasnext(_loc11_,_loc10_));
                              if(!(_loc13_ && param3))
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc14_ || param1)
                                    {
                                       if(!_loc13_)
                                       {
                                          §§goto(addr430);
                                       }
                                       else
                                       {
                                          §§goto(addr555);
                                       }
                                    }
                                    §§goto(addr555);
                                 }
                                 else
                                 {
                                    _loc9_ = §§nextvalue(_loc10_,_loc11_);
                                    if(_loc14_ || this)
                                    {
                                       addChild(_loc9_);
                                       loop13:
                                       while(true)
                                       {
                                          _loc9_.x = param4.x + _loc6_;
                                          loop14:
                                          while(true)
                                          {
                                             _loc9_.y = param4.y + _loc7_;
                                             loop15:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                if(!(_loc13_ && param1))
                                                {
                                                   §§push(int(§§pop() + (_loc9_.width + param3)));
                                                   if(_loc13_ && param1)
                                                   {
                                                      break;
                                                   }
                                                }
                                                _loc6_ = §§pop();
                                                if(_loc14_ || param3)
                                                {
                                                   while(true)
                                                   {
                                                      _loc8_++;
                                                      if(!_loc14_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      if(!_loc14_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc8_);
                                                      if(_loc13_)
                                                      {
                                                         addr319:
                                                         _loc7_ = §§pop();
                                                         if(_loc14_)
                                                         {
                                                            continue loop15;
                                                         }
                                                         continue loop12;
                                                      }
                                                      §§push(param5);
                                                      if(!_loc13_)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(!(_loc13_ && param1))
                                                            {
                                                               continue loop14;
                                                            }
                                                         }
                                                         continue loop12;
                                                      }
                                                      addr398:
                                                      var _loc12_:* = §§pop();
                                                      if(_loc14_)
                                                      {
                                                         addr410:
                                                         §§push(int(§§pop()));
                                                         if(_loc14_)
                                                         {
                                                            addr404:
                                                            _loc6_ = §§pop();
                                                            §§push(_loc12_);
                                                         }
                                                         if(!_loc13_)
                                                         {
                                                            addr409:
                                                            §§push(int(§§pop()));
                                                         }
                                                         _loc8_ = §§pop();
                                                         continue loop12;
                                                      }
                                                      §§goto(addr404);
                                                   }
                                                   continue loop13;
                                                   addr331:
                                                }
                                                continue loop12;
                                             }
                                             addr397:
                                             §§goto(addr398);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          §§push(0);
                                          if(!(_loc13_ && param1))
                                          {
                                             §§goto(addr397);
                                          }
                                          break;
                                       }
                                       §§goto(addr331);
                                       §§goto(addr397);
                                    }
                                    §§goto(addr409);
                                 }
                              }
                              else
                              {
                                 §§goto(addr472);
                              }
                              §§goto(addr473);
                           }
                        }
                        §§goto(addr472);
                     }
                     else
                     {
                        addr243:
                        _loc10_ = §§pop();
                        if(!(_loc13_ && this))
                        {
                           §§push(param1);
                           if(!_loc14_)
                           {
                              break;
                           }
                           §§goto(addr254);
                        }
                     }
                     break;
                  case 2:
                     continue;
                  default:
                     §§push(0);
                     if(_loc14_ || param2)
                     {
                        _loc10_ = §§pop();
                        if(_loc14_)
                        {
                           §§goto(addr451);
                        }
                        break loop4;
                     }
                     continue loop0;
               }
               _loc11_ = §§pop();
               §§goto(addr471);
            }
            if(_loc14_ || this)
            {
               §§goto(addr489);
            }
            addr575:
            return param1;
         }
         §§goto(addr24);
      }
      
      public function §=u§(param1:int = -1, param2:int = 0, param3:Point = null, param4:int = 5) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:Array = this.§[`§();
         if(_loc6_)
         {
            this.§9V§(_loc5_,param1,param2,param3,param4);
         }
      }
      
      public function set §2B§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            x = y = param1;
         }
      }
      
      public function set §^"I§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            scaleX = scaleY = param1;
         }
      }
   }
}
