package §?A§
{
   import §-!>§.§4!T§;
   import §1%§.b2DebugDraw;
   import §1%§.b2World;
   import §?!&§.b2Vec2;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §6c§
   {
      
      public static const §6!Y§:Number = 0.03333333333333333;
      
      public static const §,!4§:int = 10;
      
      public static const §+s§:Boolean = false;
      
      public static const §'O§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §6!Y§ = 1 / 30;
         }
         do
         {
            §,!4§ = 10;
            do
            {
               §+s§ = false;
               do
               {
                  §'O§ = true;
               }
               while(_loc2_ && §6c§);
               
            }
            while(_loc2_ && _loc2_);
            
         }
         while(!_loc1_);
         
      }
      
      public var mWorld:b2World;
      
      private var §!B§:Boolean = true;
      
      public var §2n§:§`s§;
      
      public var §`!U§:Sprite;
      
      private var §0"§:b2DebugDraw;
      
      public var §6f§:LevelMain;
      
      public var §13§:Number;
      
      private var §0X§:Number;
      
      private var §"A§:int;
      
      public function §6c§(param1:LevelMain)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            do
            {
               this.§6f§ = param1;
               do
               {
                  this.§2!i§();
               }
               while(!_loc3_);
               
            }
            while(_loc2_);
            
         }
      }
      
      public function get §,6§() : int
      {
         return this.§"A§;
      }
      
      public function get §[!i§() : Number
      {
         return this.§0X§;
      }
      
      private function §2!i§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§2n§ = new §`s§(this);
            loop0:
            while(true)
            {
               this.mWorld = new b2World(new b2Vec2(0,20),this.§!B§);
               loop1:
               while(true)
               {
                  §§push(this.mWorld);
                  while(true)
                  {
                     §§pop().§-#§(this.§2n§);
                     addr253:
                     loop5:
                     while(_loc1_ || _loc2_)
                     {
                        §§pop().§%!g§(true);
                        while(_loc1_)
                        {
                           this.§`!U§ = new Sprite();
                           loop7:
                           for(; !(_loc2_ && _loc1_); if(_loc2_ && _loc2_)
                           {
                              continue;
                           },§§goto(addr76))
                           {
                              this.§0"§ = new b2DebugDraw();
                              loop8:
                              while(true)
                              {
                                 §§push(this.§0"§);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(b2DebugDraw.§'!J§);
                                    loop10:
                                    while(true)
                                    {
                                       §§pop().§1!§(§§pop());
                                       loop11:
                                       while(true)
                                       {
                                          §§push(this.§0"§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(b2DebugDraw.§9!F§);
                                             loop13:
                                             while(true)
                                             {
                                                §§pop().§1!§(§§pop());
                                                loop14:
                                                while(!(_loc2_ && _loc1_))
                                                {
                                                   §§push(this.§0"§);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(b2DebugDraw.§#W§);
                                                      if(!_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc2_ && this))
                                                      {
                                                         §§pop().§1!§(§§pop());
                                                         while(true)
                                                         {
                                                            if(!(_loc1_ || _loc2_))
                                                            {
                                                               break;
                                                               addr154:
                                                            }
                                                            §§push(this.§0"§);
                                                            while(!_loc2_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            continue loop12;
                                                            loop20:
                                                            while(!(_loc2_ && this))
                                                            {
                                                               §§push(this.§0"§);
                                                               loop21:
                                                               for(; _loc1_; while(true)
                                                               {
                                                                  if(!(_loc1_ || _loc2_))
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  if(!_loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(1);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§pop().§'&§(§§pop());
                                                                     while(true)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        continue loop20;
                                                                        addr44:
                                                                        if(_loc1_ || _loc1_)
                                                                        {
                                                                           §§goto(addr24);
                                                                        }
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  addr164:
                                                                  addr129:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr168);
                                                                  }
                                                                  §§push(this.§0"§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§pop().§try§(this.§`!U§);
                                                                     loop25:
                                                                     while(_loc1_)
                                                                     {
                                                                        this.§6f§.stage.addChild(this.§`!U§);
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop25;
                                                                           }
                                                                           §§goto(addr62);
                                                                           addr33:
                                                                           §§pop().§%!7§(this.§0"§);
                                                                           if(_loc2_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr44);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.mWorld);
                                                                           addr76:
                                                                           continue loop5;
                                                                           if(_loc1_ || _loc1_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               },continue loop15)
                                                               {
                                                                  §§push(0.3);
                                                                  if(_loc1_)
                                                                  {
                                                                     §§pop().§24§(§§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§0"§);
                                                                        continue loop21;
                                                                        addr62:
                                                                        if(_loc1_ || this)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop().§!4§(§§pop());
                                                                        continue loop20;
                                                                     }
                                                                     addr168:
                                                                  }
                                                               }
                                                               §§goto(addr154);
                                                            }
                                                         }
                                                         continue loop14;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop13;
                                                }
                                                continue loop11;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 §§goto(addr129);
                              }
                           }
                        }
                        while(§+s§)
                        {
                           §§goto(addr251);
                        }
                        addr24:
                        return;
                     }
                  }
               }
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §§push(this.mWorld);
               if(!_loc2_)
               {
                  §§goto(addr33);
               }
               §§goto(addr253);
            }
         }
         §§goto(addr283);
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
               §§pop().§-#§(null);
               loop1:
               while(true)
               {
                  this.§2n§ = null;
                  while(true)
                  {
                     if(§+s§)
                     {
                        if(!_loc2_)
                        {
                           this.§`!U§.graphics.clear();
                        }
                        continue;
                     }
                     addr72:
                     while(true)
                     {
                        this.§`!U§ = null;
                        while(_loc1_)
                        {
                           continue loop0;
                           if(_loc1_ || this)
                           {
                              return;
                              addr56:
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §`!?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§+s§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.mWorld.§]i§();
                  do
                  {
                     this.§`!U§.parent.setChildIndex(this.§`!U§,this.§`!U§.parent.numChildren - 1);
                  }
                  while(_loc2_ && _loc1_);
                  
                  addr84:
               }
               §§goto(addr84);
            }
            return;
         }
         §§goto(addr84);
      }
      
      public function §6!7§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            if(§+s§)
            {
               if(_loc5_)
               {
                  addr53:
                  this.§`!U§.x = -param1;
               }
               do
               {
                  this.§`!U§.y = -param2;
               }
               while(!_loc5_);
               
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §>!?§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§0X§ = §6!Y§;
         }
         §§push(this.§'!H§(param1));
         if(_loc3_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(§§pop() > §,!4§)
               {
                  while(true)
                  {
                     §§push(§,!4§);
                     if(_loc3_)
                     {
                        while(true)
                        {
                           §§push(int(§§pop()));
                        }
                        addr136:
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr138:
                        while(true)
                        {
                        }
                     }
                  }
                  addr132:
               }
               while(true)
               {
                  this.§ !f§(_loc2_);
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr132);
               }
               while(true)
               {
                  §§push(param1);
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(!(_loc4_ && param1))
                        {
                           if(_loc3_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                                 addr77:
                                 §§push(param1);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 addr93:
                                 §§push(param1 - this.§0X§ * 1000);
                                 if(!_loc4_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              param1 = §§pop();
                              continue;
                           }
                        }
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr77);
               }
               return §§pop();
               addr120:
            }
            §§goto(addr136);
         }
         §§goto(addr120);
      }
      
      public function § !f§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         if(_loc8_ || param1)
         {
            this.§13§ = 0;
         }
         §§push(10);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(10);
         if(_loc8_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(!(_loc9_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc8_)
            {
               if(!_loc9_)
               {
                  if(§§pop() >= param1)
                  {
                     if(!(_loc9_ && param1))
                     {
                        break;
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc8_)
                        {
                           if(_loc8_)
                           {
                              if(_loc8_ || _loc3_)
                              {
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    addr222:
                                    while(true)
                                    {
                                       §§push(this.mWorld);
                                       while(true)
                                       {
                                          §§pop().§4k§(this.§0X§,_loc2_,_loc3_);
                                          addr231:
                                          while(true)
                                          {
                                             §§push(this.mWorld);
                                             if(_loc9_)
                                             {
                                                break;
                                             }
                                             §§pop().§-W§();
                                          }
                                       }
                                    }
                                    addr241:
                                    _loc5_ = §§pop();
                                 }
                              }
                              while(true)
                              {
                                 if(_loc8_ || _loc2_)
                                 {
                                    §§push(this);
                                    §§push(this.§13§);
                                    if(!_loc9_)
                                    {
                                       §§push(this.§0X§);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() * 1000);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§13§ = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§'O§);
                                       if(!_loc9_)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                if(_loc8_ || _loc3_)
                                                {
                                                   §4!T§.§!!]§.§@c§("Box2D",getTimer() - _loc5_);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         addr181:
                                                         while(true)
                                                         {
                                                            this.§6f§.handleEngineUpdateStep(this.§0X§);
                                                            addr146:
                                                            while(true)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue loop3;
                                                            §§goto(addr181);
                                                         }
                                                         addr139:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Number(getTimer()));
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr241);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  addr246:
                                                                  while(true)
                                                                  {
                                                                     §§push(§'O§);
                                                                     break loop9;
                                                                  }
                                                               }
                                                               addr245:
                                                            }
                                                         }
                                                         addr236:
                                                      }
                                                   }
                                                }
                                                §§goto(addr231);
                                             }
                                             addr162:
                                          }
                                          §§goto(addr139);
                                       }
                                       break;
                                    }
                                    while(§§pop())
                                    {
                                       §§goto(addr236);
                                    }
                                    §§goto(addr222);
                                 }
                                 §§goto(addr246);
                              }
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr146);
                     }
                     continue;
                  }
                  var _loc6_:*;
                  §§push((_loc6_ = this).§"A§);
                  if(_loc8_ || param1)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc8_)
                  {
                     _loc6_.§"A§ = _loc7_;
                  }
                  if(_loc8_)
                  {
                     §§goto(addr244);
                     §§push(0);
                  }
                  §§goto(addr246);
               }
               §§goto(addr106);
            }
            §§goto(addr119);
         }
      }
      
      private function §'!H§(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(param1);
            if(_loc4_ || param1)
            {
               if(!_loc3_)
               {
                  §§push(0);
                  if(!(_loc3_ && param1))
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!(_loc3_ && param1))
                        {
                           §§push(_loc2_);
                           if(!(_loc3_ && this))
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 break;
                              }
                              addr110:
                              §§push(int(§§pop()));
                           }
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §§push(param1);
                              if(_loc4_)
                              {
                                 §§push(this.§0X§);
                                 if(!_loc3_)
                                 {
                                    addr98:
                                    §§push(§§pop() * 1000);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr99:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr100:
                                          while(true)
                                          {
                                             param1 = §§pop();
                                          }
                                       }
                                    }
                                    addr98:
                                 }
                                 §§goto(addr98);
                              }
                              §§goto(addr99);
                           }
                           addr112:
                        }
                        while(_loc3_)
                        {
                           §§goto(addr112);
                        }
                        continue;
                     }
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr98);
               }
               §§goto(addr99);
            }
            §§goto(addr100);
         }
         return §§pop();
      }
   }
}
