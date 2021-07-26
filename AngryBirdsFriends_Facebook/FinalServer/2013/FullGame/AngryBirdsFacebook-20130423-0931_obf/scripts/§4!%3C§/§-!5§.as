package §4!<§
{
   import §6!^§.b2Vec2;
   import §6"1§.b2DebugDraw;
   import §6"1§.b2World;
   import §@!"§.§?l§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §-!5§
   {
      
      public static const §-"V§:Number = 0.03333333333333333;
      
      public static const §0""§:int = 10;
      
      public static const §&"X§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §-"V§ = 1 / 30;
            do
            {
               §0""§ = 10;
               do
               {
                  §&"X§ = true;
               }
               while(!(_loc1_ || §-!5§));
               
            }
            while(_loc2_);
            
         }
      }
      
      public var mWorld:b2World;
      
      private var §,;§:Boolean = true;
      
      public var §0!M§:§6"0§;
      
      public var §-"J§:Sprite;
      
      private var §46§:b2DebugDraw;
      
      private var §+!u§:Boolean = false;
      
      public var mLevelMain:§'!S§;
      
      public var §"!B§:Number;
      
      private var §!"2§:Number;
      
      private var §7!+§:int;
      
      public function §-!5§(param1:§'!S§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.mLevelMain = param1;
               while(!(_loc3_ && this))
               {
                  this.§2u§();
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr38:
               }
            }
         }
         §§goto(addr38);
      }
      
      public function get §%!X§() : int
      {
         return this.§7!+§;
      }
      
      public function get §"![§() : Number
      {
         return this.§!"2§;
      }
      
      private function §2u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§0!M§ = new §6"0§(this);
            while(true)
            {
               this.mWorld = new b2World(new b2Vec2(0,20),this.§,;§);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.mWorld.§ "Q§(this.§0!M§);
                     if(!(_loc2_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.mWorld);
            while(true)
            {
               §§pop().§ "Q§(null);
               addr102:
               §§push(this.mWorld);
               if(_loc1_ && this)
               {
                  continue;
               }
               §§pop().§6!h§();
               loop7:
               while(true)
               {
                  if(_loc2_)
                  {
                     addr66:
                     if(_loc2_ || this)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           continue;
                        }
                        addr121:
                        while(true)
                        {
                           this.§0!M§ = null;
                           break loop7;
                        }
                     }
                     break;
                  }
                  addr95:
                  addr111:
                  while(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr102);
                  }
                  while(true)
                  {
                     §§goto(addr91);
                  }
               }
               while(true)
               {
                  if(this.§+!u§)
                  {
                     §§goto(addr107);
                  }
                  addr91:
                  while(true)
                  {
                     this.§-"J§ = null;
                     §§goto(addr95);
                     continue loop4;
                  }
                  addr42:
                  return;
                  §§goto(addr66);
               }
            }
         }
         §§goto(addr121);
      }
      
      public function §"+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§+!u§)
            {
               do
               {
                  this.mWorld.§else§();
                  do
                  {
                     this.§-"J§.parent.setChildIndex(this.§-"J§,this.§-"J§.parent.numChildren - 1);
                  }
                  while(_loc1_);
                  
               }
               while(_loc1_);
               
               addr50:
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(!_loc6_)
         {
            if(this.§+!u§)
            {
               addr24:
               _loc4_ = §?l§.§'h§.§-§(0,0);
               if(!(_loc6_ && param3))
               {
                  this.§-"J§.x = _loc4_.x;
                  loop0:
                  while(true)
                  {
                     addr80:
                     while(true)
                     {
                        this.§-"J§.y = _loc4_.y;
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§46§);
                  §§push(1 / §'!S§.§2"<§);
                  if(_loc5_ || param2)
                  {
                     §§push(§§pop() * param3);
                  }
                  §§pop().§<!d§(§§pop());
                  if(!_loc6_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr86);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §+!8§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            this.§!"2§ = §-"V§;
         }
         §§push(this.§8!l§(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() > §0""§)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§0""§);
                     if(!(_loc4_ && _loc2_))
                     {
                        addr147:
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
                  while(true)
                  {
                  }
                  addr149:
               }
               while(true)
               {
                  this.§-!#§(_loc2_);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr149);
               }
               while(true)
               {
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(0);
                     if(_loc3_ || _loc2_)
                     {
                        if(_loc3_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(!(_loc4_ && this))
                              {
                                 addr74:
                                 §§push(param1);
                                 if(!_loc4_)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       break;
                                    }
                                    addr102:
                                    §§push(Number(§§pop()));
                                 }
                                 param1 = §§pop();
                              }
                              continue;
                           }
                           §§push(param1);
                           if(_loc3_ || this)
                           {
                              addr99:
                              §§push(§§pop() - this.§!"2§ * 1000);
                           }
                           §§goto(addr102);
                        }
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr74);
               }
               return §§pop();
               addr121:
            }
            §§goto(addr147);
         }
         §§goto(addr121);
      }
      
      public function §-!#§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(!(_loc8_ && _loc2_))
         {
            this.§"!B§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc9_)
            {
               if(§§pop() >= param1)
               {
                  if(!(_loc8_ && param1))
                  {
                     if(!(_loc8_ && _loc2_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.mWorld);
                           while(true)
                           {
                              §§pop().§=m§(this.§!"2§,_loc2_,_loc3_);
                              loop4:
                              while(true)
                              {
                                 §§push(this.mWorld);
                                 if(_loc8_ && this)
                                 {
                                    break;
                                 }
                                 §§pop().§6!h§();
                                 loop5:
                                 while(!_loc8_)
                                 {
                                    §§push(this);
                                    §§push(this.§"!B§);
                                    if(_loc9_)
                                    {
                                       §§push(this.§!"2§);
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() * 1000);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§"!B§ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       if(!_loc8_)
                                       {
                                          if(!(_loc8_ && this))
                                          {
                                             if(!_loc8_)
                                             {
                                                §§push(§&"X§);
                                                if(_loc9_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue;
                                                   }
                                                   loop9:
                                                   while(true)
                                                   {
                                                      this.mLevelMain.handleEngineUpdateStep(this.§!"2§);
                                                      addr121:
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(!(_loc9_ || param1))
                                                         {
                                                            continue loop6;
                                                         }
                                                         while(true)
                                                         {
                                                            _loc4_++;
                                                            addr95:
                                                            while(true)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  if(_loc9_ || _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  break loop10;
                                                                  addr97:
                                                               }
                                                               continue loop10;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      addr149:
                                                      while(true)
                                                      {
                                                         continue loop9;
                                                         §§goto(addr97);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr211:
                                                }
                                             }
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                    loop14:
                                    while(true)
                                    {
                                       §§goto(addr211);
                                       §§push(§&"X§);
                                       addr226:
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                          continue loop14;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(Number(getTimer()));
                                    if(!(_loc9_ || this))
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr226);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr95);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§7!+§);
                  if(_loc9_ || param1)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc9_ || _loc3_)
                  {
                     _loc6_.§7!+§ = _loc7_;
                  }
                  if(_loc9_ || _loc2_)
                  {
                     addr225:
                     §§goto(addr226);
                     §§push(Number(0));
                  }
               }
               §§goto(addr128);
            }
            §§goto(addr225);
         }
      }
      
      private function §8!l§(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(!_loc4_)
            {
               if(!(_loc4_ && param1))
               {
                  §§push(0);
                  if(_loc3_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc3_ || param1)
                        {
                           break;
                        }
                        loop1:
                        while(_loc4_ && param1)
                        {
                           while(true)
                           {
                              param1 = §§pop();
                              continue loop1;
                           }
                        }
                        continue;
                     }
                     _loc2_++;
                     while(true)
                     {
                        §§push(param1);
                        addr57:
                        while(true)
                        {
                           §§push(this.§!"2§);
                           if(!(_loc4_ && this))
                           {
                              §§push(§§pop() * 1000);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc4_ && _loc3_))
                     {
                        §§goto(addr87);
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr87);
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr87);
         }
         return _loc2_;
      }
      
      public function set §7§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.mWorld);
            loop0:
            while(§§pop() != null)
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  if(!(_loc3_ && param1))
                  {
                     if(!§§pop())
                     {
                        if(this.§-"J§)
                        {
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    this.§-"J§.graphics.clear();
                                    loop3:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§46§);
                                                   loop27:
                                                   while(true)
                                                   {
                                                      §§pop().§3c§(0.3);
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§push(this.§46§);
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§pop().§[Z§(1);
                                                               addr163:
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     this.§-"J§.mouseEnabled = false;
                                                                     continue loop17;
                                                                  }
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§46§);
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(b2DebugDraw.§7#§);
                                                                        loop11:
                                                                        while(_loc2_ || param1)
                                                                        {
                                                                           §§pop().§5a§(§§pop());
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(this.§46§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc2_ || param1)
                                                                                          {
                                                                                             §§push(b2DebugDraw.§12§);
                                                                                             if(!(_loc3_ && param1))
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                if(!(_loc2_ || this))
                                                                                                {
                                                                                                   addr284:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(!this.§-"J§);
                                                                                                            if(_loc2_ || param1)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  break loop22;
                                                                                                               }
                                                                                                               addr255:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§-"J§ = new Sprite();
                                                                                                                        addr261:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§46§ = new b2DebugDraw();
                                                                                                                           addr241:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§46§);
                                                                                                                              addr232:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(b2DebugDraw.§?O§);
                                                                                                                                 break loop11;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr257:
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            break loop22;
                                                                                                         }
                                                                                                         addr285:
                                                                                                      }
                                                                                                      loop15:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                         addr94:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                            addr41:
                                                                                                            if(!(_loc2_ || param1))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc3_ && this)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.mWorld);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§pop().§@!C§(this.§46§);
                                                                                                                  §§goto(addr94);
                                                                                                                  §§goto(addr48);
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            if(_loc2_ || param1)
                                                                                                            {
                                                                                                               addr62:
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  break loop1;
                                                                                                               }
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            §§goto(addr261);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr284:
                                                                                                }
                                                                                                §§goto(addr255);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr298:
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr245);
                                                                                                continue loop20;
                                                                                             }
                                                                                          }
                                                                                          addr245:
                                                                                       }
                                                                                       §§goto(addr232);
                                                                                    }
                                                                                    addr187:
                                                                                 }
                                                                                 §§goto(addr298);
                                                                              }
                                                                              §§goto(addr241);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().§5a§(§§pop());
                                                                           continue loop24;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop17;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr285);
                                                         continue loop27;
                                                      }
                                                   }
                                                }
                                                addr210:
                                             }
                                             §§goto(addr257);
                                          }
                                       }
                                       §§goto(addr130);
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§goto(addr284);
                                    }
                                    addr282:
                                 }
                                 §§goto(addr284);
                              }
                              §§goto(addr224);
                              if(!(_loc2_ || this))
                              {
                                 continue;
                              }
                              §§goto(addr41);
                           }
                        }
                        §§goto(addr23);
                     }
                     §§goto(addr282);
                  }
                  §§goto(addr284);
               }
               if(_loc2_)
               {
                  return;
               }
               break;
            }
            return;
         }
         §§goto(addr210);
      }
      
      public function get §7§() : Boolean
      {
         return this.§+!u§;
      }
      
      public function get §`!l§() : b2DebugDraw
      {
         return this.§46§;
      }
      
      public function §+0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§46§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  this.§-"J§.graphics.clear();
               }
            }
         }
      }
   }
}
