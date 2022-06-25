package §2!H§
{
   import § D§.§]!B§;
   import §&L§.b2Vec2;
   import §]=§.b2DebugDraw;
   import §]=§.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §?!`§
   {
      
      public static const §&!5§:Number = 0.03333333333333333;
      
      public static const §#Y§:int = 10;
      
      public static const §9!^§:Boolean = false;
      
      public static const §#q§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §?!`§))
         {
            §&!5§ = 1 / 30;
         }
         loop0:
         while(true)
         {
            §#Y§ = 10;
            while(true)
            {
               §9!^§ = false;
               while(_loc2_ || _loc1_)
               {
                  continue loop0;
                  §#q§ = true;
                  if(_loc2_ || §?!`§)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public var mWorld:b2World;
      
      private var §^m§:Boolean = true;
      
      public var §7O§:§&P§;
      
      public var §9o§:Sprite;
      
      private var §6i§:b2DebugDraw;
      
      public var §"!>§:LevelMain;
      
      public var §?5§:Number;
      
      private var §-!j§:Number;
      
      private var §^!Q§:int;
      
      public function §?!`§(param1:LevelMain)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         while(true)
         {
            this.§"!>§ = param1;
            while(!_loc3_)
            {
               this.§7@§();
               if(_loc2_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function get §">§() : int
      {
         return this.§^!Q§;
      }
      
      public function get §[6§() : Number
      {
         return this.§-!j§;
      }
      
      private function §7@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7O§ = new §&P§(this);
            loop0:
            while(true)
            {
               this.mWorld = new b2World(new b2Vec2(0,20),this.§^m§);
               while(true)
               {
                  §§push(this.mWorld);
                  loop2:
                  while(true)
                  {
                     §§pop().§?8§(this.§7O§);
                     loop3:
                     while(§9!^§)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(this.mWorld);
                           loop5:
                           while(true)
                           {
                              §§pop().§6]§(true);
                              loop6:
                              for(; !_loc2_; while(_loc1_ || this)
                              {
                                 §§goto(addr108);
                                 §§push(this.§6i§);
                                 §§goto(addr122);
                              })
                              {
                                 this.§9o§ = new Sprite();
                                 loop7:
                                 while(true)
                                 {
                                    this.§6i§ = new b2DebugDraw();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§6i§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(b2DebugDraw.§>!>§);
                                          loop10:
                                          while(true)
                                          {
                                             §§pop().§1;§(§§pop());
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§6i§);
                                                while(true)
                                                {
                                                   §§push(b2DebugDraw.§`8§);
                                                   loop13:
                                                   while(!_loc2_)
                                                   {
                                                      §§pop().§1;§(§§pop());
                                                      loop14:
                                                      while(!_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§push(this.§6i§);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(b2DebugDraw.§^!c§);
                                                               if(!_loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               §§pop().§1;§(§§pop());
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(this.§6i§);
                                                                  loop17:
                                                                  while(!_loc2_)
                                                                  {
                                                                     §§push(1);
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() / LevelMain.§8N§);
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§!x§(§§pop());
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§6i§);
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0.3);
                                                                                 if(!(_loc1_ || _loc2_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§pop().§;!%§(§§pop());
                                                                                 continue loop6;
                                                                                 addr108:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc1_ || _loc2_)
                                                                                    {
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(1);
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          §§pop().§7!#§(§§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc1_ || this)
                                                                                             {
                                                                                                if(_loc1_ || _loc1_)
                                                                                                {
                                                                                                   if(_loc1_ || _loc2_)
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                   continue loop14;
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                             continue loop6;
                                                                                             addr48:
                                                                                             if(_loc1_ || this)
                                                                                             {
                                                                                                break loop3;
                                                                                             }
                                                                                          }
                                                                                          continue loop8;
                                                                                          addr122:
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                    §§push(this.§6i§);
                                                                                    addr162:
                                                                                    continue loop21;
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                              continue loop19;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop9;
                                                                  addr95:
                                                                  while(true)
                                                                  {
                                                                     if(_loc1_ || this)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           break;
                                                                           addr64:
                                                                        }
                                                                        this.§"!>§.stage.addChild(this.§9o§);
                                                                        while(!(_loc2_ && _loc1_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.mWorld);
                                                                              if(_loc1_ || this)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                            continue loop13;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop10;
                                                   if(_loc2_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   §§pop().§2@§(this.§9o§);
                                                   §§goto(addr95);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               §§pop().§?8§(null);
               loop1:
               while(true)
               {
                  this.§7O§ = null;
                  while(true)
                  {
                     if(§9!^§)
                     {
                        loop3:
                        while(_loc1_)
                        {
                           this.§9o§.graphics.clear();
                           while(true)
                           {
                           }
                           while(true)
                           {
                              if(_loc1_ || this)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           §§goto(addr102);
                        }
                        continue;
                     }
                     while(true)
                     {
                        this.§9o§ = null;
                        continue loop0;
                        §§goto(addr102);
                     }
                     §§goto(addr53);
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function §1!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§9!^§)
            {
               loop0:
               while(true)
               {
                  this.mWorld.§4$§();
                  addr75:
                  while(true)
                  {
                     this.§9o§.parent.setChildIndex(this.§9o§,this.§9o§.parent.numChildren - 1);
                     if(_loc2_)
                     {
                        if(!(_loc1_ && this))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr20);
               }
            }
            addr20:
            return;
         }
         §§goto(addr75);
      }
      
      public function §+F§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            if(§9!^§)
            {
               do
               {
                  this.§9o§.x = -param1;
                  do
                  {
                     this.§9o§.y = -param2;
                  }
                  while(_loc4_);
                  
               }
               while(!(_loc5_ || param2));
               
               addr68:
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §;Q§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§-!j§ = §&!5§;
         }
         §§push(this.§^q§(param1));
         if(_loc3_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() > §#Y§)
               {
                  addr122:
                  while(true)
                  {
                     §§push(§#Y§);
                     if(!(_loc4_ && _loc2_))
                     {
                        while(true)
                        {
                           §§push(int(§§pop()));
                        }
                        addr131:
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr133:
                        while(true)
                        {
                        }
                     }
                  }
                  addr122:
               }
               while(true)
               {
                  this.§>D§(_loc2_);
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr122);
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc3_ || param1)
                  {
                     §§push(0);
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(!_loc3_)
                           {
                              continue;
                           }
                           addr68:
                           §§push(param1);
                           if(_loc3_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              §§push(this.§-!j§);
                              if(_loc3_)
                              {
                                 addr85:
                                 §§push(§§pop() - §§pop() * 1000);
                                 if(!_loc3_)
                                 {
                                 }
                                 param1 = §§pop();
                                 continue;
                              }
                              §§goto(addr85);
                           }
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr68);
               }
               return §§pop();
            }
            §§goto(addr131);
         }
         §§goto(addr122);
      }
      
      public function §>D§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(_loc9_ || this)
         {
            this.§?5§ = 0;
         }
         §§push(10);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(10);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(!(_loc8_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc8_)
            {
               if(§§pop() >= param1)
               {
                  if(!(_loc8_ && param1))
                  {
                     if(_loc9_)
                     {
                        if(!_loc8_)
                        {
                           if(_loc9_ || _loc2_)
                           {
                              if(_loc9_ || _loc3_)
                              {
                                 break;
                              }
                              loop11:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.mWorld);
                                    loop7:
                                    while(true)
                                    {
                                       §§pop().§^l§(this.§-!j§,_loc2_,_loc3_);
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc9_ || this)
                                          {
                                             continue loop7;
                                          }
                                          while(true)
                                          {
                                             §§push(Number(getTimer()));
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                             _loc5_ = §§pop();
                                             continue loop11;
                                          }
                                          loop2:
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             loop3:
                                             while(true)
                                             {
                                                §§push(§#q§);
                                                loop4:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§goto(addr242);
                                                   addr202:
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§#q§);
                                                      if(_loc8_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ || _loc3_))
                                                            {
                                                               continue loop3;
                                                            }
                                                            §]!B§.§6_§.§`J§("Box2D",getTimer() - _loc5_);
                                                            while(true)
                                                            {
                                                               if(!(_loc9_ || _loc2_))
                                                               {
                                                                  continue loop8;
                                                               }
                                                            }
                                                         }
                                                         addr158:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§"!>§.handleEngineUpdateStep(this.§-!j§);
                                                         addr144:
                                                         addr210:
                                                         loop10:
                                                         while(_loc9_ || _loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc9_ || param1)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                  }
                                                               }
                                                               addr131:
                                                               while(true)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     while(!_loc9_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     continue loop0;
                                                                     addr134:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr250:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§?5§);
                                                            if(_loc9_)
                                                            {
                                                               §§push(this.§-!j§);
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() * 1000);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().§?5§ = §§pop();
                                                            continue loop12;
                                                            §§goto(addr144);
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr242:
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr134);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§^!Q§);
                  if(_loc9_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(!(_loc8_ && this))
                  {
                     _loc6_.§^!Q§ = _loc7_;
                  }
                  if(_loc9_)
                  {
                     §§goto(addr250);
                     §§push(0);
                  }
               }
               §§goto(addr151);
            }
            §§goto(addr131);
         }
      }
      
      private function §^q§(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(_loc3_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(_loc3_ || _loc2_)
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     if(_loc3_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(!_loc4_)
                           {
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              addr110:
                              _loc2_ = §§pop();
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc3_)
                                 {
                                    §§push(this.§-!j§);
                                    while(true)
                                    {
                                       §§push(§§pop() * 1000);
                                       addr70:
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          addr71:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr72:
                                             while(true)
                                             {
                                                param1 = §§pop();
                                             }
                                          }
                                       }
                                    }
                                    addr68:
                                 }
                                 §§goto(addr72);
                              }
                              addr111:
                           }
                           while(!(_loc3_ || _loc2_))
                           {
                              §§goto(addr111);
                              §§goto(addr72);
                           }
                           continue;
                        }
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop() + 1);
                           if(_loc4_ && this)
                           {
                           }
                           §§goto(addr110);
                        }
                        §§push(int(§§pop()));
                        §§goto(addr110);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr70);
               }
               §§goto(addr71);
            }
            §§goto(addr72);
         }
         return §§pop();
      }
   }
}
