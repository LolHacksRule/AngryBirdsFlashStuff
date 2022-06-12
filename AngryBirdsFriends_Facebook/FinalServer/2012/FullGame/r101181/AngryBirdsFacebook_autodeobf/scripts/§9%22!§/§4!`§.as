package §9"!§
{
   import §#]§.b2Vec2;
   import §48§.b2DebugDraw;
   import §48§.b2World;
   import §]!A§.;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §4!`§
   {
      
      public static const §%!E§:Number = 0.03333333333333333;
      
      public static const §?X§:int = 10;
      
      public static const §1""§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §%!E§ = 1 / 30;
            while(true)
            {
               §?X§ = 10;
               loop1:
               while(_loc1_ || _loc1_)
               {
                  while(true)
                  {
                     §1""§ = true;
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
         §§goto(addr66);
      }
      
      public var mWorld:b2World;
      
      private var §1y§:Boolean = true;
      
      public var dynamic:§`",§;
      
      public var §2T§:Sprite;
      
      private var §>A§:b2DebugDraw;
      
      private var §[""§:Boolean = false;
      
      public var §@O§:§9"3§;
      
      public var §6!'§:Number;
      
      private var §2!=§:Number;
      
      private var §-!N§:int;
      
      public function §4!`§(param1:§9"3§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super();
         }
         do
         {
            this.§@O§ = param1;
            do
            {
               this.§]$§();
            }
            while(_loc2_);
            
         }
         while(!_loc3_);
         
      }
      
      public function get §;s§() : int
      {
         return this.§-!N§;
      }
      
      public function get §0F§() : Number
      {
         return this.§2!=§;
      }
      
      private function §]$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.dynamic = new §`",§(this);
            while(true)
            {
               this.mWorld = new b2World(new b2Vec2(0,20),this.§1y§);
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.mWorld.§!!L§(this.dynamic);
            if(_loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               §§pop().§!!L§(null);
               loop1:
               while(true)
               {
                  this.dynamic = null;
                  loop2:
                  for(; this.§[""§; if(_loc2_ && _loc2_)
                  {
                     continue;
                  },this.§2T§.graphics.clear(),§§goto(addr120))
                  {
                     if(_loc1_ || _loc1_)
                     {
                        continue;
                     }
                     addr120:
                     while(true)
                     {
                        break loop2;
                        addr39:
                        if(_loc1_ || this)
                        {
                           if(!(_loc2_ && this))
                           {
                              return;
                              addr63:
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     this.§2T§ = null;
                     continue loop0;
                     §§goto(addr120);
                  }
               }
            }
            addr128:
         }
         while(true)
         {
            §§push(this.mWorld);
            if(_loc1_ || _loc2_)
            {
               §§pop().§4,§();
               continue;
            }
            §§goto(addr128);
         }
         §§goto(addr63);
      }
      
      public function §"!v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§[""§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr74:
                  this.mWorld.§?!U§();
               }
               do
               {
                  this.§2T§.parent.setChildIndex(this.§2T§,this.§2T§.parent.numChildren - 1);
               }
               while(!_loc2_);
               
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(_loc5_ || param2)
         {
            if(this.§[""§)
            {
               _loc4_ = §#6§.§6!z§.§'c§(0,0);
               addr29:
               if(_loc5_)
               {
                  this.§2T§.x = _loc4_.x;
               }
               loop0:
               while(true)
               {
                  addr80:
                  while(true)
                  {
                     this.§2T§.y = _loc4_.y;
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §7",§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§2!=§ = §%!E§;
         }
         §§push(this.§5!E§(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_ || param1)
            {
               if(§§pop() > §?X§)
               {
                  if(!_loc4_)
                  {
                     addr129:
                     §§push(§?X§);
                     if(_loc3_ || _loc2_)
                     {
                        addr138:
                        _loc2_ = int(§§pop());
                     }
                     §§goto(addr138);
                  }
                  while(true)
                  {
                     §§goto(addr95);
                  }
               }
               addr95:
               while(true)
               {
                  this.§?x§(_loc2_);
                  if(_loc3_ || _loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               while(true)
               {
                  §§push(param1);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(_loc3_ || this)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_ || param1)
                           {
                              addr92:
                              §§push(0);
                              if(!_loc4_)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(param1);
                                          break;
                                       }
                                       continue;
                                    }
                                    addr87:
                                    §§push(param1);
                                    §§push(this.§2!=§);
                                 }
                                 §§push(§§pop() * 1000);
                              }
                              param1 = §§pop() - §§pop();
                              continue;
                           }
                           §§goto(addr87);
                        }
                     }
                     §§goto(addr92);
                  }
                  break;
               }
               return §§pop();
            }
            §§goto(addr138);
         }
         §§goto(addr129);
      }
      
      public function §?x§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         if(!_loc9_)
         {
            this.§6!'§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc9_)
            {
               if(§§pop() >= param1)
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     if(_loc8_ || param1)
                     {
                        if(!(_loc9_ && this))
                        {
                           if(!_loc9_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(§1""§);
                              loop2:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(Number(getTimer()));
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       _loc5_ = §§pop();
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop1;
                                    addr201:
                                 }
                                 while(true)
                                 {
                                    §§push(this.mWorld);
                                    loop6:
                                    while(true)
                                    {
                                       §§pop().§4$§(this.§2!=§,_loc2_,_loc3_);
                                       addr195:
                                       while(true)
                                       {
                                          if(_loc8_)
                                          {
                                             continue loop6;
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr207);
                                    }
                                 }
                                 addr164:
                                 loop13:
                                 while(true)
                                 {
                                    §§push(§1""§);
                                    if(!(_loc8_ || param1))
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc9_)
                                       {
                                          §#6§.§=_§.§'!9§("Box2D",getTimer() - _loc5_);
                                       }
                                       while(true)
                                       {
                                          if(_loc9_ && param1)
                                          {
                                             continue loop13;
                                          }
                                       }
                                       addr142:
                                    }
                                    while(true)
                                    {
                                       this.§@O§.handleEngineUpdateStep(this.§2!=§);
                                       loop11:
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             _loc4_++;
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   continue loop11;
                                                }
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   break;
                                                }
                                                §§goto(addr195);
                                             }
                                             continue loop0;
                                             addr103:
                                          }
                                          §§goto(addr207);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§6!'§);
                           if(!_loc9_)
                           {
                              §§push(this.§2!=§);
                              if(_loc8_)
                              {
                                 §§push(§§pop() * 1000);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().§6!'§ = §§pop();
                           §§goto(addr164);
                        }
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr103);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§-!N§);
                  if(_loc8_ || this)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc8_)
                  {
                     _loc6_.§-!N§ = _loc7_;
                  }
                  if(!(_loc9_ && _loc2_))
                  {
                     addr209:
                     §§goto(addr210);
                     §§push(Number(0));
                  }
               }
               §§goto(addr164);
            }
            §§goto(addr209);
         }
      }
      
      private function §5!E§(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     addr73:
                     §§push(0);
                     if(!_loc4_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           if(!(_loc4_ && _loc2_))
                           {
                              break;
                           }
                        }
                        else
                        {
                           _loc2_++;
                        }
                        addr66:
                        §§push(param1);
                        §§push(this.§2!=§);
                        if(_loc3_)
                        {
                           §§push(§§pop() * 1000);
                        }
                     }
                     param1 = §§pop() - §§pop();
                     continue;
                  }
                  §§goto(addr66);
               }
            }
            §§goto(addr73);
         }
         return _loc2_;
      }
      
      public function set §2!g§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§[""§);
                              if(!_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(!this.§2T§);
                                       if(_loc2_ || param1)
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop5:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(this.§>A§);
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         loop24:
                                                         while(true)
                                                         {
                                                            if(_loc3_ && _loc2_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§push(b2DebugDraw.§8o§);
                                                            while(!_loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop().§9N§(§§pop());
                                                                  addr211:
                                                                  while(!_loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop24;
                                                                     }
                                                                  }
                                                                  continue loop4;
                                                               }
                                                            }
                                                            addr201:
                                                            §§pop().§9N§(§§pop());
                                                            loop20:
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  §§push(this.§>A§);
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop24;
                                                                     }
                                                                     §§push(b2DebugDraw.§]!L§);
                                                                     if(_loc2_)
                                                                     {
                                                                        §§pop().§9N§(§§pop());
                                                                        loop22:
                                                                        while(!(_loc3_ && param1))
                                                                        {
                                                                           §§push(this.§>A§);
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§=o§(0.3);
                                                                              loop27:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr161:
                                                                                    if(_loc2_ || this)
                                                                                    {
                                                                                       §§push(this.§>A§);
                                                                                       continue loop21;
                                                                                    }
                                                                                    loop10:
                                                                                    for(; _loc2_ || _loc2_; §§goto(addr161))
                                                                                    {
                                                                                       §§push(this.§>A§);
                                                                                       while(true)
                                                                                       {
                                                                                          addr127:
                                                                                          §§push(b2DebugDraw.§6!e§);
                                                                                          if(_loc3_ && param1)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr144:
                                                                                          §§pop().§!!1§(1);
                                                                                          while(!(_loc2_ || _loc3_))
                                                                                          {
                                                                                             continue loop20;
                                                                                             §§goto(addr144);
                                                                                          }
                                                                                          this.§2T§.mouseEnabled = false;
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                continue loop27;
                                                                                             }
                                                                                             §§push(this.§>A§);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                continue loop25;
                                                                                             }
                                                                                             §§pop().§=B§(this.§2T§);
                                                                                             loop18:
                                                                                             for(; _loc2_; while(true)
                                                                                             {
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                continue loop18;
                                                                                             },continue loop0)
                                                                                             {
                                                                                                addr99:
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      this.§@O§.stage.addChild(this.§2T§);
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                                addr242:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§2T§ = new Sprite();
                                                                                                   addr256:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§>A§ = new b2DebugDraw();
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   §§goto(addr99);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr146);
                                                                                             §§goto(addr153);
                                                                                          }
                                                                                          addr146:
                                                                                          addr153:
                                                                                       }
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 continue loop22;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr199);
                                                                     §§goto(addr210);
                                                                  }
                                                                  continue loop24;
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                            addr199:
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                addr277:
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   do
                                                   {
                                                      this.§[""§ = param1;
                                                      if(_loc3_ && _loc3_)
                                                      {
                                                         while(!_loc2_)
                                                         {
                                                         }
                                                         continue;
                                                         addr62:
                                                      }
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            return;
                                                         }
                                                         §§goto(addr114);
                                                      }
                                                      §§goto(addr79);
                                                      §§goto(addr211);
                                                   }
                                                   while(!(_loc3_ && _loc2_));
                                                   
                                                   addr283:
                                                   return;
                                                   addr23:
                                                }
                                                §§goto(addr242);
                                             }
                                          }
                                          addr275:
                                       }
                                       §§goto(addr277);
                                    }
                                 }
                                 §§goto(addr23);
                              }
                              §§goto(addr275);
                           }
                        }
                        §§goto(addr23);
                     }
                  }
               }
               §§goto(addr283);
               §§push(this.mWorld);
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§pop().§+"C§(this.§>A§);
               §§goto(addr62);
            }
         }
         §§goto(addr213);
      }
      
      public function get §2!g§() : Boolean
      {
         return this.§[""§;
      }
      
      public function get §`L§() : b2DebugDraw
      {
         return this.§>A§;
      }
      
      public function §!"4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§>A§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr44:
                  this.§2T§.graphics.clear();
               }
            }
            return;
         }
         §§goto(addr44);
      }
   }
}
