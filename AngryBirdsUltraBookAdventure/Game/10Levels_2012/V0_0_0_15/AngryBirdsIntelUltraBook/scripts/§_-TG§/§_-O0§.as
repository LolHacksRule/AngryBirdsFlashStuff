package §_-TG§
{
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2DebugDraw;
   import §_-aU§.b2World;
   import §_-qO§.§ in§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §_-O0§
   {
      
      public static const §_-C-§:Number = 0.03333333333333333;
      
      public static const §_-4A§:int = 10;
      
      public static const §_-EN§:Boolean = false;
      
      public static const §_-PE§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-C-§ = 1 / 30;
         }
         loop0:
         while(true)
         {
            §_-4A§ = 10;
            while(true)
            {
               §_-EN§ = false;
               while(_loc2_)
               {
                  if(_loc2_)
                  {
                     §_-PE§ = true;
                     if(!(_loc1_ && _loc2_))
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public var mWorld:b2World;
      
      private var §_-YR§:Boolean = true;
      
      public var §_-Je§:§_-91§;
      
      public var §_-6s§:Sprite;
      
      private var §_-VM§:b2DebugDraw;
      
      public var §_-6A§:§_-00u§;
      
      public var §_-09F§:Number;
      
      private var §_-07R§:Number;
      
      private var §_-00A§:int;
      
      public function §_-O0§(param1:§_-00u§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
            while(true)
            {
               this.§_-6A§ = param1;
               §§goto(addr55);
            }
         }
         addr55:
         while(true)
         {
            this.§_-I3§();
            if(!(_loc3_ && _loc3_))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §_-5s§() : int
      {
         return this.§_-00A§;
      }
      
      public function get §_-Jk§() : Number
      {
         return this.§_-07R§;
      }
      
      private function §_-I3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-Je§ = new §_-91§(this);
            loop0:
            while(true)
            {
               this.mWorld = new b2World(new b2Vec2(0,20),this.§_-YR§);
               loop1:
               while(true)
               {
                  §§push(this.mWorld);
                  while(true)
                  {
                     §§pop().§_-06F§(this.§_-Je§);
                     addr263:
                     addr20:
                     while(§_-EN§)
                     {
                     }
                     return;
                     addr29:
                     if(_loc1_ && _loc1_)
                     {
                        continue;
                     }
                     §§pop().§_-7l§(this.§_-VM§);
                     if(_loc2_)
                     {
                        if(!_loc2_)
                        {
                           loop25:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr94:
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       this.§_-6A§.stage.addChild(this.§_-6s§);
                                       loop26:
                                       while(true)
                                       {
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             addr60:
                                             if(!(_loc1_ && this))
                                             {
                                                if(_loc2_)
                                                {
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      addr76:
                                                      §§push(this.mWorld);
                                                      if(!_loc1_)
                                                      {
                                                         §§goto(addr29);
                                                      }
                                                      else
                                                      {
                                                         addr252:
                                                         while(true)
                                                         {
                                                            §§pop().§_-06U§(true);
                                                            break loop26;
                                                            §§goto(addr76);
                                                         }
                                                         addr252:
                                                      }
                                                   }
                                                   break;
                                                }
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(this.§_-VM§);
                                                   addr171:
                                                   addr187:
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(!(_loc1_ && this))
                                                      {
                                                         §§push(1);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() / §_-00u§.§_-lY§);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§pop().§_-mQ§(§§pop());
                                                               addr183:
                                                               addr43:
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-VM§);
                                                                  addr142:
                                                                  addr205:
                                                                  loop21:
                                                                  for(; !(_loc1_ && _loc2_); while(true)
                                                                  {
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     continue loop21;
                                                                     addr138:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§_-VM§);
                                                                        if(!_loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§pop().§_-G4§(this.§_-6s§);
                                                                        continue loop25;
                                                                     }
                                                                  },continue loop17)
                                                                  {
                                                                     §§push(0.3);
                                                                     if(!(_loc2_ || _loc2_))
                                                                     {
                                                                        continue loop19;
                                                                     }
                                                                     §§pop().§_-rX§(§§pop());
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ || _loc1_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(this.§_-VM§);
                                                                           continue loop21;
                                                                        }
                                                                        addr240:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr252);
                                                                           continue loop22;
                                                                        }
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(b2DebugDraw.§_-d6§);
                                                                     addr207:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§_-0Bo§(§§pop());
                                                                        break loop25;
                                                                     }
                                                                     §§goto(addr142);
                                                                  }
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr20);
                                                            }
                                                            addr119:
                                                            §§push(1);
                                                            if(_loc1_ && _loc1_)
                                                            {
                                                               continue;
                                                            }
                                                            §§pop().§_-02O§(§§pop());
                                                            §§goto(addr138);
                                                         }
                                                      }
                                                      break;
                                                      if(_loc1_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr119);
                                                   }
                                                   while(_loc2_)
                                                   {
                                                      §§push(b2DebugDraw.§_-x1§);
                                                      if(!_loc1_)
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            §§pop().§_-0Bo§(§§pop());
                                                            continue loop16;
                                                         }
                                                         addr216:
                                                         while(true)
                                                         {
                                                            §§pop().§_-0Bo§(§§pop());
                                                            addr217:
                                                            while(true)
                                                            {
                                                               §§goto(addr205);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr207);
                                                      §§goto(addr171);
                                                   }
                                                   addr214:
                                                   while(true)
                                                   {
                                                      §§goto(addr216);
                                                   }
                                                }
                                                §§goto(addr252);
                                             }
                                             §§goto(addr158);
                                          }
                                          §§goto(addr138);
                                       }
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             this.§_-6s§ = new Sprite();
                                             continue loop1;
                                          }
                                          continue loop0;
                                       }
                                       addr53:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§goto(addr94);
                                       }
                                       addr223:
                                    }
                                    §§goto(addr214);
                                 }
                                 break;
                              }
                              §§goto(addr183);
                           }
                           while(_loc2_)
                           {
                              §§goto(addr187);
                              §§push(this.§_-VM§);
                           }
                           §§goto(addr217);
                        }
                        §§goto(addr43);
                     }
                     §§goto(addr53);
                  }
               }
            }
         }
         §§goto(addr240);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               §§pop().§_-06F§(null);
               while(true)
               {
                  this.§_-Je§ = null;
                  addr102:
                  while(_loc1_)
                  {
                  }
               }
               while(true)
               {
                  §§push(this.mWorld);
                  if(!(_loc2_ && this))
                  {
                     §§pop().§_-RE§();
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(§_-EN§)
            {
               if(!_loc2_)
               {
                  this.§_-6s§.graphics.clear();
               }
               §§goto(addr97);
            }
            §§goto(addr83);
         }
      }
      
      public function §_-08U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§_-EN§)
            {
               loop0:
               while(true)
               {
                  this.mWorld.§_-jZ§();
                  addr75:
                  while(true)
                  {
                     this.§_-6s§.parent.setChildIndex(this.§_-6s§,this.§_-6s§.parent.numChildren - 1);
                     if(_loc1_ || _loc2_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr34);
               }
            }
            addr34:
            return;
         }
         §§goto(addr75);
      }
      
      public function §_-12§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(§_-EN§)
            {
               do
               {
                  this.§_-6s§.x = -param1;
                  do
                  {
                     this.§_-6s§.y = -param2;
                  }
                  while(!(_loc5_ || param1));
                  
               }
               while(_loc4_ && param1);
               
               addr67:
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function §_-6h§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§_-07R§ = §_-C-§;
         }
         §§push(this.§_-08-§(param1));
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() > §_-4A§)
               {
                  if(_loc4_ || param1)
                  {
                     addr155:
                     §§push(§_-4A§);
                     if(!(_loc3_ && this))
                     {
                        addr163:
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
                  while(true)
                  {
                  }
                  addr165:
               }
               while(true)
               {
                  this.§_-t0§(_loc2_);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr165);
               }
               while(true)
               {
                  §§push(param1);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(0);
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(!(_loc3_ && param1))
                           {
                              addr83:
                              §§push(param1);
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(_loc4_ || this)
                                 {
                                    break;
                                 }
                                 addr118:
                                 §§push(Number(§§pop()));
                              }
                              param1 = §§pop();
                           }
                           continue;
                        }
                        §§push(param1);
                        if(!(_loc3_ && param1))
                        {
                           §§push(this.§_-07R§);
                           if(_loc4_)
                           {
                              addr117:
                              §§push(§§pop() - §§pop() * 1000);
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr83);
               }
               return §§pop();
            }
            §§goto(addr163);
         }
         §§goto(addr155);
      }
      
      public function §_-t0§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         if(_loc8_ || this)
         {
            this.§_-09F§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc9_ && _loc3_))
            {
               if(§§pop() >= param1)
               {
                  if(!_loc9_)
                  {
                     if(_loc8_ || _loc2_)
                     {
                        if(_loc8_ || _loc2_)
                        {
                           if(_loc8_ || this)
                           {
                              break;
                           }
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 §§push(this);
                                 §§push(this.§_-09F§);
                                 if(_loc8_ || _loc2_)
                                 {
                                    §§push(this.§_-07R§);
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       §§push(§§pop() * 1000);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§_-09F§ = §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§_-PE§);
                                    if(!(_loc9_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             § in§.§_-Cv§.§_-3P§("Box2D",getTimer() - _loc5_);
                                             addr160:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr152:
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          this.§_-6A§.handleEngineUpdateStep(this.§_-07R§);
                                          addr141:
                                          while(true)
                                          {
                                             _loc4_++;
                                             addr118:
                                             while(true)
                                             {
                                                if(_loc8_ || this)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop3;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc9_)
                                             {
                                                §§push(Number(getTimer()));
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                                _loc5_ = §§pop();
                                                while(!(_loc8_ || this))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§_-PE§);
                                                      continue loop12;
                                                   }
                                                }
                                                addr225:
                                             }
                                             §§goto(addr225);
                                          }
                                          while(true)
                                          {
                                             §§push(this.mWorld);
                                             break loop2;
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                          §§goto(addr236);
                                       }
                                       addr235:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().§_-wu§(this.§_-07R§,_loc2_,_loc3_);
                                    §§goto(addr213);
                                 }
                                 continue;
                              }
                              §§goto(addr225);
                           }
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr118);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§_-00A§);
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc8_ || _loc2_)
                  {
                     _loc6_.§_-00A§ = _loc7_;
                  }
                  if(!(_loc9_ && _loc3_))
                  {
                     addr234:
                     §§goto(addr235);
                     §§push(Number(0));
                  }
               }
               §§goto(addr236);
            }
            §§goto(addr234);
         }
      }
      
      private function §_-08-§(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(0);
               if(!(_loc3_ && param1))
               {
                  if(_loc4_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!(_loc4_ || _loc3_))
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc2_++;
                     }
                     §§push(param1);
                     if(!_loc3_)
                     {
                        addr74:
                        addr76:
                        §§push(§§pop() - this.§_-07R§ * 1000);
                        if(_loc3_)
                        {
                        }
                        addr80:
                        param1 = §§pop();
                        continue;
                     }
                     §§goto(addr80);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr74);
               }
               §§goto(addr76);
            }
            §§goto(addr74);
         }
         return _loc2_;
      }
   }
}
